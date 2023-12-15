import 'package:flutter/material.dart';

class CheckboxListview extends StatefulWidget {
  const CheckboxListview({super.key});

  @override
  State<CheckboxListview> createState() => _CheckboxListviewState();
}

class _CheckboxListviewState extends State<CheckboxListview> {
  bool _isChecked = false;

  List<String> _sites = [
    'yahoo.com',
    'gmail.com',
    'youtube.com',
    'flutter.io',
    'google.com',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox in  Listview'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: _sites.map((site) => CheckboxListTile(
            title: Text(site),
            value: _isChecked, onChanged: (value){
              setState(() {
                _isChecked = value!;
              });
        },)).toList(),
      ),
    );
  }
}
