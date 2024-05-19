import 'package:flutter/cupertino.dart';
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
  final modes = ["CDJ", "CDS", "FQ"];
  var selectedMode = "CDJ";
  final UN_MOIS = 100;
  final TROIS_MOIS = 101;
  final PAR_ANS = 103;
  var selectedPeriod = 0;
  var result = 0;

  void onModeChanged(v) {
    setState(() {
      selectedMode = v;
    });
  }

  void onPeriodChanged(v) {
    setState(() {
      selectedPeriod = v;
    });
  }

  void onBtnClicked() {
    var montant = 0;

    if (selectedPeriod == UN_MOIS) {
      switch (selectedMode) {
        case "CDJ":
          montant = 200;
          break;
        case "CDS":
          montant = 150;
          break;
        default:
          montant = 100;
      }
    } else if (selectedPeriod == TROIS_MOIS) {
      switch (selectedMode) {
        case "CDJ":
          montant = 1500;
          break;
        case "CDS":
          montant = 1000;
          break;
        default:
          montant = 800;
      }
    } else {
      switch (selectedMode) {
        case "CDJ":
          montant = 2000;
          break;
        case "CDS":
          montant = 1600;
          break;
        default:
          montant = 1200;
      }
    }

    setState(() {
      result = montant;
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
                const Text("Mode de formation: "),
                Expanded(
                  child: DropdownButton(
                    value: selectedMode,
                    items: modes
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: onModeChanged,
                    isExpanded: true,
                  ),
                )
              ],
            ),
            ListTile(
              leading: Radio(
                  value: UN_MOIS,
                  groupValue: selectedPeriod,
                  onChanged: onPeriodChanged),
              title: const Text("1 Mois"),
            ),
            ListTile(
              leading: Radio(
                  value: TROIS_MOIS,
                  groupValue: selectedPeriod,
                  onChanged: onPeriodChanged),
              title: const Text("3 Mois"),
            ),
            ListTile(
              leading: Radio(
                  value: PAR_ANS,
                  groupValue: selectedPeriod,
                  onChanged: onPeriodChanged),
              title: const Text("Par ans"),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: FilledButton(
                      onPressed: onBtnClicked, child: const Text("A Payer")),
                ),
                Expanded(
                    child: Text(
                  "$result",
                  textAlign: TextAlign.center,
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
