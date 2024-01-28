import 'package:flutter/material.dart';

class MyAlertDiglog extends StatefulWidget {
  const MyAlertDiglog({super.key});

  @override
  State<MyAlertDiglog> createState() => _MyAlertDiglogState();
}

class _MyAlertDiglogState extends State<MyAlertDiglog> {
  myAlrtButton() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 350,
            width: 200,
            child: AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text("yes"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("No"),
                ),
              ],
              title: Text("Hi ektiar welcome"),
              content: Text(" Do you want delete "),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                myAlrtButton();
              },
              child: Text("Detete"),
            ),
          ],
        ),
      ),
    );
  }
}
