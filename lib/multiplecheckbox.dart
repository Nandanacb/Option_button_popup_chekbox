import 'package:flutter/material.dart';

class Multiplecheckbox extends StatefulWidget {
  @override
  State<Multiplecheckbox> createState() => _MultiplecheckboxState();
}

class _MultiplecheckboxState extends State<Multiplecheckbox> {
  List<Map<String, dynamic>> items = [
    {'name': 'item1', 'isChecked': false},
    {'name': 'item2', 'isChecked': false},
    {'name': 'item3', 'isChecked': false},
    {'name': 'item4', 'isChecked': false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Multiple example"),
        ),
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
        ));
  }
}
