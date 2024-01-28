import 'package:flutter/material.dart';

class MySliver extends StatefulWidget {
  const MySliver({super.key});

  @override
  State<MySliver> createState() => _MySliverState();
}

class _MySliverState extends State<MySliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("ektia"),
            centerTitle: true,
            expandedHeight: 100,
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
