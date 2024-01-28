import 'package:flutter/material.dart';

class MyAlerButton extends StatefulWidget {
  const MyAlerButton({super.key});

  @override
  State<MyAlerButton> createState() => _MyAlerButtonState();
}

class _MyAlerButtonState extends State<MyAlerButton> {
  myalerBuuton() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 400,
            width: 200,
            child: AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text("Yes"),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
              backgroundColor: Colors.white,
              title: Text("this is alert button"),
              content: Text("do you want to delete "),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is my allert button"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              myalerBuuton();
            },
            child: Text("Delete"),
          ),
        ],
      )),
    );
  }
}
