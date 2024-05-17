import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
    )),
    home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
        backgroundColor: Colors.green,
      ),
      body: Text("This is the body"),
    ),
  ));
}
