import 'package:flutter/material.dart';
import 'package:navebar/widgets/serch.dart';
import 'package:navebar/widgets/profile.dart';
import 'package:navebar/widgets/homePage.dart';

class MyNagebationBar extends StatefulWidget {
  const MyNagebationBar({super.key});

  @override
  State<MyNagebationBar> createState() => _MyNagebationBarState();
}

class _MyNagebationBarState extends State<MyNagebationBar> {
  List<Widget> page = [MyHomePage(), MyProfile(), MySearchBar()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("damo Nagvation bar"),
      ),
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          selectedFontSize: 25,
          backgroundColor: Colors.amber,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search")
          ]),
    );
  }
}
