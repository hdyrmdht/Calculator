import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevtedBut extends StatelessWidget {
String txt;
Function onclick;
ElevtedBut(this.txt,this.onclick);
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: BorderSide(
          width: 1,
          ),
        ),
        onPressed: (){
          onclick(txt);
        },
        child: Text(txt,style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,

        ),),),
    );
  }
}
