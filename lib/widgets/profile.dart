import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Text("this is Profile page"),
        )
      ]),
    );
  }
}
