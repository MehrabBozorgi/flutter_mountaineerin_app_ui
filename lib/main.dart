import 'package:flutter/material.dart';
import 'package:flutter_mountain_ui/screen/FirstScreen.dart';
import 'package:flutter_mountain_ui/screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),

    );
  }
}
