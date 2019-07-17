import 'package:flutter/material.dart';
import 'screens/bottom_navigation_screen.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData.light().copyWith(
        //primaryColor: Colors.transparent,
        //scaffoldBackgroundColor: Colors.transparent,
        canvasColor: Color(0xFF0031FF),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Water Routine',
      home: NavigationScreen(),
    ));
