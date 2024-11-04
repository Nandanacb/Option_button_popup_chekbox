import 'package:flutter/material.dart';

class Checkbox extends StatefulWidget {
  @override
  
    State<Checkbox> createState()=>_CheckboxState();
  }
class _CheckboxState extends State<Checkbox>{
 bool isChecked=false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox example"),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value:isChecked,
              onChanged:(bool? value){
                setState(() {
                  isChecked=value?? false;
                });
              },
            ),
            Text(isChecked ? 'Checked' : 'Unchecked',
            style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
    );
  }
}