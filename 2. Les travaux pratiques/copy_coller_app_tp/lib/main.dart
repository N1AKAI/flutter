import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  final textFieldController = TextEditingController();
  var textFieldValue = "";

  void onButtonClicked() {
    setState(() {
      textFieldValue = textFieldController.text;
      textFieldController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text("Sasir: "),
                Expanded(
                  child: TextField(
                    controller: textFieldController,
                  ),
                )
              ],
            ),
            const SizedBox(height: 12),
            FilledButton(
                onPressed: onButtonClicked, child: Text("Copy/Coller")),
            const SizedBox(height: 12),
            Text(textFieldValue)
          ],
        ),
      ),
    );
  }
}
