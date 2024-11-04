import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String? selectedOption = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio button example"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Option 1"),
            leading: Radio<String>(
                value: 'Option 1',
                groupValue: selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    selectedOption = value;
                  });
                }),
          ),
          ListTile(
            title: Text("Option 2"),
            leading: Radio<String>(
                value: 'Option 2',
                groupValue: selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    selectedOption = value;
                  });
                }),
          ),
          ListTile(
            title: Text("Option 3"),
            leading: Radio<String>(
                value: 'Option 3',
                groupValue: selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    selectedOption = value;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'selected:$selectedOption',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
