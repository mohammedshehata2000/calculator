import 'package:flutter/material.dart';
import 'package:practis3/calculator_screen.dart';

class CounterScreen extends StatefulWidget{
  static const String routeName = 'counterScreen';
 int contaner =0;
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:AppBar(
  backgroundColor: Color.fromARGB(108, 45, 232, 216),
 title: Text('COUNTER SCREEN'),
  centerTitle: true,

) ,
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '${widget.contaner}',
        style: TextStyle(
            fontSize: 50,
          fontWeight: FontWeight.w500,
        ),),

      FloatingActionButton(
        heroTag: 'dtn1',
        onPressed:(){
          widget.contaner++;
          print(widget.contaner);
          setState(() {

          });
        },
        child:Icon(Icons.add) ,

      backgroundColor: Colors.cyanAccent,


      ),

      SizedBox(height: 60,),

      Text(
        'GO TO CALCULATOR',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),),

      SizedBox(height: 60,),

      FloatingActionButton(
        heroTag: 'dtn2',
        onPressed:(){
         Navigator.pushNamed(context, CalculatorScreen.routeName);
        },
        child:Text (
          'GO' ,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 40), ) ,

        backgroundColor: Colors.cyanAccent,


      ),


    ],

  ),
),
    );
  }
}