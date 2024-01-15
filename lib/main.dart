import 'package:flutter/material.dart';
import 'package:flutter_yoga/Motivation.dart';

import 'package:flutter_yoga/Screens/Home.dart';
import 'package:flutter_yoga/Screens/SplashScreen.dart';
import 'package:flutter_yoga/Screens/Startup.dart';
import 'package:flutter_yoga/services/Chapter.dart';

import 'Screens/Finish.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

//
