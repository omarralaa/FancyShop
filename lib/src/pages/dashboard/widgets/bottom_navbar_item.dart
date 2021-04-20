  import 'package:flutter/material.dart';

buildBottomNavigationBarItem({
    int index,
    int selectedIndex,
    IconData selectedIcon,
    IconData unselectedIcon,
    String label,
  }) {
    bool isSelected = index == selectedIndex;
    return BottomNavigationBarItem(
      icon: isSelected ? Icon(selectedIcon) : Icon(unselectedIcon),
      label: label,
    );
  }
