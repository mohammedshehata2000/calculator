

import 'package:flutter/material.dart';
import 'package:practis3/button.dart';

class CalculatorScreen extends StatefulWidget{

  static const String routeName = 'CalculatorScreen2';

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resText ='';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.cyanAccent,
centerTitle: true,
       title: Text('CALCULATOR',style: TextStyle(fontSize: 30),),

     ),

     body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          resText,
          style: TextStyle(fontSize: 50),),

        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             Button(text: 'x^y',onButtonCliked:onOperationClicked  ,),
              Button(text: '_',onButtonCliked: delete ,),
              Button(text: 'C',onButtonCliked:  clear  ,),
              Button(text: '/',onButtonCliked: onOperationClicked  ,),


            ],

          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(text: '1',onButtonCliked: onDigitClicked  ,),
              Button(text: '2',onButtonCliked:onDigitClicked   ,),
              Button(text: '3',onButtonCliked:onDigitClicked   ,),
              Button(text: '*',onButtonCliked: onOperationClicked  ,),


            ],

          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(text: '4',onButtonCliked: onDigitClicked  ,),
              Button(text: '5',onButtonCliked: onDigitClicked  ,),
              Button(text: '6',onButtonCliked: onDigitClicked  ,),
              Button(text: '-',onButtonCliked:onOperationClicked   ,),


            ],

          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(text: '7',onButtonCliked:onDigitClicked   ,),
              Button(text: '8',onButtonCliked:onDigitClicked   ,),
              Button(text: '9',onButtonCliked:onDigitClicked   ,),
              Button(text: '+',onButtonCliked:onOperationClicked   ,),


            ],

          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button(text: '.',onButtonCliked:onDigitClicked   ,),
              Button(text: '0',onButtonCliked:onDigitClicked   ,),
              Button(text: '%',onButtonCliked:onOperationClicked  ,),
              Button(text: '=',onButtonCliked: onEqualClicked  ,),


            ],

          ),
        ),





      ],


    ),

   );
  }

void onDigitClicked (String text){
    resText+= text;

    setState(() {

    });
}

  String lhs = '';

  String operation ='';

void onOperationClicked(String operatorClicked ){
   if (lhs.isEmpty){
     lhs = resText;

   }
   else {
    String rhs = resText;
     lhs= Calculate(lhs,rhs,operation);
   }
   operation = operatorClicked;
   resText = '';
   setState(() {});

}


  void onEqualClicked (String onEqualClicked ){
  String rhs = resText;
  resText = Calculate(lhs, rhs, operation);
  lhs='';
  operation = '';

  setState(() {

  });

  }

  String Calculate(String lhs, String rhs, String operation) {
    double num1 = double.parse(lhs);
    double num2 = double.parse(rhs);
    double res=0 ;
    if      (operation == '+'){
      res = num1 + num2;
    }
    else if (operation == '-'){
      res = num1 - num2;
    }
    else if (operation == '*'){
      res = num1 * num2;
    }
    else if (operation == '/'){
      res = num1 / num2;
    }
    else if (operation == '%'){

      res = num1 % num2;
    }
    else if (operation=='x^y'){
      double result=1;
      for (int i = 0;i<num2;i++){
        result *=  num1;
      }
      res = result ;
    }

    String result = res.toString();
    return  result;
  }

  void clear (String text ){
  setState(() {
    resText ='';
  });
  }
  void delete (String  text) {
    if (resText.isNotEmpty) {
      resText = resText.substring(0, resText.length - 1);
      setState(() {

      });
    }
  }
}