import 'package:flutter/material.dart';
import 'package:travel/screens/places.dart';
import 'package:travel/map/map.dart';
import 'package:travel/screens/weather.dart';

import '../map/map.dart';

class MyTabScreen extends StatefulWidget {
  @override
  _MyTabScreenState createState() => _MyTabScreenState();
}

class _MyTabScreenState extends State<MyTabScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.map), text: 'Map'),
            Tab(icon: Icon(Icons.location_on), text: 'Location'),
            Tab(icon: Icon(Icons.currency_rupee), text: 'Currency'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Map Screen
          map(),
          // places and dishes
          PlacesAndDishes(),
          // Food/Cuisine Screen
          weather()
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
