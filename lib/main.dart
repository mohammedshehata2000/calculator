import 'package:flutter/material.dart';
import 'package:practis3/calculator_screen.dart';
import 'package:practis3/counter_screen.dart';

void main () {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     initialRoute:CounterScreen.routeName ,
     routes: {
       CounterScreen.routeName :(context) => CounterScreen(),
       CalculatorScreen.routeName : (context) => CalculatorScreen(),
     },


   );
  }

}