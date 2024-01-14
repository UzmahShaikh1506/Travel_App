import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class cog extends StatefulWidget {
  @override
  _cogState createState() => _cogState();
}

class _cogState extends State<cog> {
  TextEditingController numberController = TextEditingController();
  List<String> emergencyContacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Contact Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: numberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Emergency Contact Number'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                addEmergencyContact();
              },
              child: Text('Add Emergency Contact'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                startApiCallTimer();
              },
              child: Text('Start API Call Timer'),
            ),
          ],
        ),
      ),
    );
  }

  void addEmergencyContact() {
    setState(() {
      emergencyContacts.add(numberController.text);
      numberController.clear();
    });
  }

  void startApiCallTimer() {
    const Duration apiCallInterval = Duration(minutes: 5);
    const Duration notificationInterval = Duration(minutes: 15);

    // Initial API call
    callApi();

    // Set up periodic API calls
    Timer.periodic(apiCallInterval, (Timer timer) {
      callApi();
    });

    // Set up periodic notifications
    Timer.periodic(notificationInterval, (Timer timer) {
      sendNotification();
    });
  }

  void callApi() async {
    final apiEndpoint = 'http://127.0.0.1:5000/send_sms';
    final from = 'Testing';
    final text = 'Location details';

    for (String to in emergencyContacts) {
      final response = await http.post(
        Uri.parse(apiEndpoint),
        body: {
          'to': to,
          'from': from,
          'text': text,
        },
      );

      if (response.statusCode == 200) {
        print('API call successful to $to');
      } else {
        print('API call failed to $to');
      }
    }
  }

  void sendNotification() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

    const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
      'emergency_channel',
      'Emergency Notifications',
      importance: Importance.max,
      priority: Priority.high,
      showWhen: false,
    );

    const NotificationDetails platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0,
      'Emergency Notification',
      'Please react to the emergency notification',
      platformChannelSpecifics,
      payload: 'emergency_notification',
    );
  }
}
