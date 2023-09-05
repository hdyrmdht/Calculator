import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'elevatedbutton.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String result="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(130, 130, 130, 130),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        leading: Icon(
          Icons.calculate_outlined,
          size: 30,
        ),
        title: Text("Calculator"),
        actions: [

          Padding(
            padding: EdgeInsets.only(right: 14),
              child: Icon(Icons.history_rounded,size: 30,))
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  result,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300,fontSize: 35),
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevtedBut("7",OnbuttonClick),
                  ElevtedBut("8",OnbuttonClick),
                  ElevtedBut("9",OnbuttonClick),
                  ElevtedBut("/",onOperatorClick),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevtedBut("4",OnbuttonClick),
                  ElevtedBut("5",OnbuttonClick),
                  ElevtedBut("6",OnbuttonClick),
                  ElevtedBut("*",onOperatorClick),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevtedBut("1",OnbuttonClick),
                  ElevtedBut("2",OnbuttonClick),
                  ElevtedBut("3",OnbuttonClick),
                  ElevtedBut("+",onOperatorClick),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevtedBut(".",OnbuttonClick),
                  ElevtedBut("0",OnbuttonClick),
                  ElevtedBut("=", onEqualClick),
                  ElevtedBut("-",onOperatorClick),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  String op="";
  String lhs="";
  calculate(String lhs,String rhs,String op){
    double LHS=double.parse(lhs);
    double RHS=double.parse(rhs);
 if(op=="+"){
   double res = LHS + RHS;
   return res.toString();
 }
 else  if(op=="*"){
      double res = LHS *RHS;
      return res.toString();
    }
    else  if(op=="/"){
      double res = LHS / RHS;
      return res.toString();
    }
  else  if(op=="-"){
      double res = LHS - RHS;
      return res.toString();
    }
    return "";
  }
  onEqualClick(txt){

    result= calculate(lhs, result, op);
    op=txt;
    setState(() {

    });
    print(result);
  }
  onOperatorClick(txt){
 if(op.isEmpty){
   lhs=result;
   op=txt;
 }else{
   String res=calculate(lhs, result, op);
   lhs=res;
   op=txt;
 }
result="";
 print(lhs);

 setState(() {

 });
  }
   OnbuttonClick(txt){
    if(op=="="){
      op="";
      lhs="";
      result="";

    }
    result+=txt;
    setState(() {

    });

   }
}
