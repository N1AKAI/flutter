import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NewWidget(),
  ));
}

class NewWidget extends StatefulWidget {
  const NewWidget({
    super.key,
  });

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  final numberOneController = TextEditingController();
  final numberTwoController = TextEditingController();
  var selectedOperation = "";
  int result = 0;

  void onOperationSelected(v) {
    setState(() {
      selectedOperation = v;
    });
  }

  void calculer() {
    int n1 = int.parse(numberOneController.text);
    int n2 = int.parse(numberTwoController.text);

    setState(() {
      if (selectedOperation == "+") {
        result = n1 + n2;
      } else {
        result = n1 * n2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: numberOneController,
            ),
            const SizedBox(height: 14),
            TextField(
              controller: numberTwoController,
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: Radio(
                        value: "+",
                        groupValue: selectedOperation,
                        onChanged: onOperationSelected),
                    title: const Text("Somme"),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: Radio(
                        value: "*",
                        groupValue: selectedOperation,
                        onChanged: onOperationSelected),
                    title: const Text("Produit"),
                  ),
                )
              ],
            ),
            FilledButton(onPressed: calculer, child: const Text("Calculer")),
            Text("$result")
          ],
        ),
      ),
    );
  }
}
