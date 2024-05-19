import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({
    super.key,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final nombreOneController = TextEditingController();
  final nombreTwoController = TextEditingController();
  int result = 0;
  void somme() {
    // var n1 = nombreOneController.text;
    final n1 = int.parse(nombreOneController.text);
    final n2 = int.parse(nombreTwoController.text);
    setState(() {
      nombreOneController.text = "";
      nombreTwoController.text = "";
      result = n1 + n2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Somme de deux nombres",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text("Nombre 1: "),
                Expanded(
                  child: TextField(controller: nombreOneController),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                const Text("Nombre 2: "),
                Expanded(
                  child: TextField(controller: nombreTwoController),
                ),
              ],
            ),
            const SizedBox(height: 14),
            FilledButton(onPressed: somme, child: Text("Somme")),
            const SizedBox(height: 14),
            Text("Result: $result")
          ],
        ),
      ),
    );
  }
}
