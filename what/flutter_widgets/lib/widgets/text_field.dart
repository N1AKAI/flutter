import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 241, 165, 165),
            hintText: "My Hint",
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: Icon(Icons.phone),
            suffixIcon: Icon(Icons.accessible_forward),
            labelText: "Label Text"),
        maxLength: 15,
      ),
    ),
  ));
}
