// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:untitled/screens/Active%20Constituents_screen.dart';
import 'package:untitled/screens/Augmentin_screen.dart';
import 'package:untitled/screens/Edit%20Profile_Screen.dart';
import 'package:untitled/screens/P&L_screen.dart';
import 'package:untitled/screens/US_screen.dart';
import 'package:untitled/screens/chatbot_screen.dart';
import 'package:untitled/screens/contraindications_screen.dart';
import 'package:untitled/screens/dictionary_screen.dart';
import 'package:untitled/screens/home_screen.dart';
import 'package:untitled/screens/indication_screen.dart';
import 'package:untitled/screens/main_screen.dart';
import 'package:untitled/screens/profile_screen.dart';
import 'package:untitled/screens/score.dart';
import 'package:untitled/screens/tradename_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
