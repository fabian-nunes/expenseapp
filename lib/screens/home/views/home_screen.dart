import 'dart:math';

import 'package:expenseapp/screens/home/views/main_screen.dart';
import 'package:expenseapp/screens/stats/stats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var widgetList = [
    MainScreen(),
    StatScreen(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    // Dynamic colors based on theme
    Color selectedColor = Theme.of(context).colorScheme.primary;
    Color unselectedColor = Theme.of(context).colorScheme.onSurface;

    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          selectedItemColor: selectedColor, // Improved selected item color handling
          unselectedItemColor: unselectedColor, // Improved unselected item color
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: index == 0 ? selectedColor : unselectedColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.line_axis,
                color: index == 1 ? selectedColor : unselectedColor,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
              ],
              transform: GradientRotation(pi / 4),
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: widgetList[index],
    );
  }
}