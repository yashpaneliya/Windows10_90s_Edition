import 'package:flutter/material.dart';
import 'package:windows10_1990/screens/bootingUp.dart';
bool viewClippy = false;
bool logoBack = false;
bool viewMenu = false;
bool mypc = false;
bool dosView = false;


List<bool> viewBools = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

void main(){
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Windows 10 1990 Edition',
    home: SplashScreen(),
    theme: ThemeData(fontFamily: 'Microsoft Sans Serif'),
  ));
}

