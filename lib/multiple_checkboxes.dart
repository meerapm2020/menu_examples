import 'package:flutter/material.dart';

class MultipleCheckboxExample extends StatefulWidget {
  @override
  _MultipleCheckboxExampleState createState() =>
      _MultipleCheckboxExampleState();
}
class _MultipleCheckboxExampleState extends State<MultipleCheckboxExample> {

  List<Map<String, dynamic>> items = [
    {'name': 'Item 1', 'isChecked': false},
    {'name': 'Item 2', 'isChecked': false},
    {'name': 'Item 3', 'isChecked': false},
    {'name': 'Item 4', 'isChecked': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Multiple Checkboxes Example')),
      body: ListView(
        children: items.map((item) {
          return CheckboxListTile(
            title: Text(item['name']),
            value: item['isChecked'],
            onChanged: (bool? value) {
              setState(() {
                item['isChecked'] = value ?? false;
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
