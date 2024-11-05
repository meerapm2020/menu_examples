import 'package:flutter/material.dart';
import 'package:menu_examples/checkbox_example.dart';
import 'package:menu_examples/drawer_menu.dart';
import 'package:menu_examples/multiple_checkboxes.dart';
import 'package:menu_examples/option_button.dart';
import 'package:menu_examples/popup_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultipleCheckboxExample(),
    );
  }
}
