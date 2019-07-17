import 'package:flutter/material.dart';

int selectedIndex = 1;
bool isSelected = false;
List<IconData> bottomIcons = [Icons.date_range, Icons.home, Icons.settings];
List<String> titles = ['History', 'Home', 'Setting'];
List<BottomNavigationBarItem> makeBottomNavigator() {
  List<BottomNavigationBarItem> bottomNavigatorItems = [];

  for (int i = 0; i < bottomIcons.length; i++) {
    bottomNavigatorItems.add(
      BottomNavigationBarItem(
        icon: Icon(
          bottomIcons[i],
          size: 30.0,
          color: Colors.white,
        ),
        activeIcon: Icon(
          bottomIcons[i],
          size: 30.0,
          color: Color(0xFF02FF6A),
        ),
        title: Text(
          titles[i],
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  return bottomNavigatorItems;
}

class BottomNavigationCard extends StatelessWidget {
  BottomNavigationCard({@required this.onTap});
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: makeBottomNavigator(),
      currentIndex: selectedIndex,
      fixedColor: Colors.blue,
    );
  }
}
