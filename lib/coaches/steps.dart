import 'package:fit4sure/coaches/caoch_gender.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepPage extends StatefulWidget {
  const StepPage({super.key});

  @override
  State<StepPage> createState() => _StepPageState();
}

class _StepPageState extends State<StepPage> {
  final List<Steps> _data = [
    Steps(
        headerText: "Step 1",
        expandedText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud"),
    Steps(
        headerText: "Step 2",
        expandedText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud"),
    Steps(
        headerText: "Step 3",
        expandedText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud"),
    Steps(
        headerText: "Step 4",
        expandedText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud"),
  ];
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      dividerColor: Colors.grey,
      elevation: 2,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Steps steps) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(steps.headerText),
            );
          },
          body: ListTile(
            title: Text(steps.expandedText),
          ),
          isExpanded: steps.isExpanded,
        );
      }).toList(),
    );
  }
}

class Steps {
  Steps({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText;
  bool isExpanded;
}
