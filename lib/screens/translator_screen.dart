// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_speech/flutter_speech.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:share/share.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:translator/translator.dart';
//
// class TranslatorScreen extends StatefulWidget {
//   const TranslatorScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TranslatorScreen> createState() => _TranslatorScreenState();
// }
//
// class _TranslatorScreenState extends State<TranslatorScreen> {
//   final TextEditingController _inputController = TextEditingController();
//   final TextEditingController _outputController = TextEditingController();
//
//   void _translateText() async {
//     // Get source and target language codes
//     final sourceLang = '' ;// Determine source language
//     final targetLang = ''; // Determine target language
//
//     // Use the translation library to translate text
//     final translatedText = await translate(_inputController.text,
//     from: sourceLang, to: targetLang);
//
//     // Update the output controller with translated text
//     setState(() => _outputController.text = translatedText);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Translator'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Upper row with two containers and an arrow
//             Row(
//               children: [
//                 Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.grey[200],
//                   ),
//                 ),
//                 const SizedBox(width: 20),
//                 const Icon(Icons.compare_arrows_rounded),
//                 const SizedBox(width: 20),
//                 Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.grey[200],
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//
//             // Container with textfield, voice icon, and image icon
//             Container(
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: Column(
//                 children: [
//                   TextField(
//                     controller: _inputController,
//                     maxLines: 10,
//                     decoration: InputDecoration(
//                       hintText: 'Enter text to translate',
//                       border: InputBorder.none,
//                       contentPadding: const EdgeInsets.all(10.0),
//                       suffixIcon: IconButton(
//                         onPressed: () async {
//                           final recognizedText = await SpeechRecognition.recognize();
//                           if (recognizedText != null) {
//                             setState(() => _inputController.text = recognizedText);
//                           }
//                         },
//                         icon: const Icon(Icons.mic),
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: IconButton(
//                       onPressed: () async {
//                         final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
//                         if (pickedFile != null) {
//                           final extractedText = await recognizeTextFromImage(pickedFile.path);
//                           setState(() => _inputController.text = extractedText);
//                         }
//                       },
//                       icon: const Icon(Icons.image),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//
//             // Container with textfield, speaker, copy, and share icons
//             Container(
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: TextField(
//                 controller: _outputController,
//                 maxLines: 10,
//                 decoration: InputDecoration(
//                   hintText: 'Translated text',
//                   border: InputBorder.none,
//                   contentPadding: const EdgeInsets.all(10.0),
//                   suffixIcon: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         onPressed: () async {
//                           await TextToSpeech().speak(_outputController.text);
//                         },
//                         icon: const Icon(Icons.speaker),
//                       ),
//                       IconButton(
//                         onPressed: () async {
//                           Clipboard.setData(ClipboardData(text: _outputController.text));
//                         },
//                         icon: const Icon(Icons.copy),
//                       ),
//                       IconButton(
//                         onPressed: () async {
//                           Share.share('Translated text: ' + _outputController.text);
//                         },
//                         icon: const Icon(Icons.share),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }