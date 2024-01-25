import 'package:flutter/material.dart';
import 'package:navebar/widgets/serch.dart';
import 'package:navebar/widgets/profile.dart';
import 'package:navebar/widgets/homePage.dart';

class MyCurved_NavBar extends StatefulWidget {
  const MyCurved_NavBar({super.key});

  @override
  State<MyCurved_NavBar> createState() => _MyCurved_NavBarState();
}

class _MyCurved_NavBarState extends State<MyCurved_NavBar> {
  List<Widget> pages = [MyHomePage(), MyProfile(), MySearchBar()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          backgroundColor: Colors.green,
          selectedFontSize: 20,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ]),
    );
  }
}
