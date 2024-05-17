import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyFirstWidget(),
  ));
}

class MyFirstWidget extends StatefulWidget {
  MyFirstWidget({
    super.key,
  });

  @override
  State<MyFirstWidget> createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 38),
            ),
            FilledButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text("Increment"))
          ],
        ),
      ),
    );
  }
}
