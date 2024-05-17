import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Text(
        "My first text",
        style: TextStyle(
            backgroundColor: Colors.red,
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600),
      ),
    ),
  ));
}
