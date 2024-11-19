import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox example"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                value: isCheck,
                onChanged: (bool? value) {
                  setState(() {
                    isCheck = value ?? false;
                  });
                }),
            Text(
              isCheck ? 'checked' : 'uncheked',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
