import 'package:flutter/material.dart';

class AlertDiglogs extends StatefulWidget {
  const AlertDiglogs({super.key});

  @override
  State<AlertDiglogs> createState() => _AlertDiglogsState();
}

class _AlertDiglogsState extends State<AlertDiglogs> {
  myalert() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            width: 200,
            child: AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text("Yes"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No"),
                ),
              ],
              backgroundColor: Colors.white,
              title: Text("waring"),
              content: Text("DO you want detete ?"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                myalert();
              },
              child: Text("Delete"))
        ]),
      ),
    );
  }
}
