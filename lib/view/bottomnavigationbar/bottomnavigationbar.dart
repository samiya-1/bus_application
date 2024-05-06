import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomBarNavigation extends StatefulWidget {
  const BottomBarNavigation({super.key});

  @override
  State<BottomBarNavigation> createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [BottomNavigationBarItem(icon: Icon(Ionicons.home_outline))]),
    );
  }
}
