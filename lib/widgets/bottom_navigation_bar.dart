import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:interneepk_app/screens/course_screen.dart';
import 'package:interneepk_app/screens/favorite_screen.dart';
import 'package:interneepk_app/screens/home_screen.dart';
import 'package:interneepk_app/screens/profile_screen.dart';

import '../utils/constants/colors.dart';

class MainNavigationPage extends StatefulWidget {
  const MainNavigationPage({super.key});

  @override
  State<MainNavigationPage> createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State<MainNavigationPage> {
  List Screens = [
    HomeScreen(),
    CourseScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          index: _selectedIndex,
          color: AppColors.secondaryColor,
          backgroundColor: Colors.transparent,
          items: [
            CurvedNavigationBarItem(
              child: Icon(Icons.home, size: 35),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.assignment, size: 35),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.favorite, size: 35),
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.person, size: 35),
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      body: Screens[_selectedIndex],
    );
  }
}
