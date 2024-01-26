import 'package:flutter/material.dart';
import 'package:navebar/widgets/serch.dart';
import 'package:navebar/widgets/profile.dart';
import 'package:navebar/widgets/homePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyCurved extends StatefulWidget {
  const MyCurved({super.key});

  @override
  State<MyCurved> createState() => _MyCurvedState();
}

class _MyCurvedState extends State<MyCurved> {
  List<Widget> pages = [MyHomePage(), MyProfile(), MySearchBar()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            animationCurve: Curves.bounceIn,
            items: [
              Icon(Icons.home),
              Icon(Icons.person),
              Icon(Icons.search),
            ]));
  }
}
