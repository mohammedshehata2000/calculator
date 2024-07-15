import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  String text ;
  Function onButtonCliked;

  Button({required this.text, required this.onButtonCliked });

  @override
  Widget build(BuildContext context) {

   return Expanded(
     child: Container(
       margin:  EdgeInsets.all(1),
           child: ElevatedButton(
           onPressed: (){
          onButtonCliked(text);

           },
           child:Text(
             text,
             style: TextStyle(
                 fontSize: 32,
                 fontWeight: FontWeight.w600
       
             ),),
           style:ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(
               110, 37, 217, 102) )),

     ),
   );
  }

}