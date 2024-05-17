import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        color: Colors.red,
        child: const SizedBox(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Item 1",
                style: TextStyle(
                  backgroundColor: Colors.blue,
                ),
              ),
              Text("Item 2"),
              Text("Item 3"),
              Text("Item 4"),
              Text("Item 5"),
              Text("Item 6"),
              Text("Item 7"),
              Text("Item 8"),
            ],
          ),
        ),
      ),
    ),
  ));
}
