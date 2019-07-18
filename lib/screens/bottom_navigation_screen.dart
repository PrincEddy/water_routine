import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:water_routine/components/navigation_component.dart';
import 'history_screen.dart';
import 'settings_screen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> optionBottomNavSelection = [
      HistoryScreen(),
      HomeScreen(),
      SettingScreen()
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: optionBottomNavSelection.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationCard(
        onTap: (int item) {
          setState(() {
            selectedIndex = item;
            isSelected = false;
          });
        },
      ),
    );
  }
}
