import 'package:flutter/material.dart';
class RadioExample extends StatefulWidget {
  @override
  _RadioExampleState createState() => _RadioExampleState();
}
class _RadioExampleState extends State<RadioExample> {
  
  String? selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio Button Example')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text('Option 1'),
            leading: Radio<String>(
              value: 'Option 1',
              groupValue: selectedOption,
              onChanged: (String? value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Option 2'),
            leading: Radio<String>(
              value: 'Option 2',
              groupValue: selectedOption,
              onChanged: (String? value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Option 3'),
            leading: Radio<String>(
              value: 'Option 3',
              groupValue: selectedOption,
              onChanged: (String? value) {
                setState(() {
                  selectedOption = value;
                });
              },
            ),
          ),
          // Display the selected option
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Selected: $selectedOption',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
