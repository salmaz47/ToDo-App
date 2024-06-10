import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/util/my_buttons.dart';

class DailogBox extends StatelessWidget
{
  final controller;
  VoidCallback saveButton;
  VoidCallback cancleButton;

  DailogBox({
    super.key,
    required this.controller,
    required this.saveButton,
    required this.cancleButton
});

  @override
  Widget build(BuildContext context) {
   return AlertDialog(
     backgroundColor:Color.fromRGBO(250, 237, 205,1),
     content: Padding(
       padding: const EdgeInsets.all(15.0),
       child: Container(
         height: 130.0,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             // get user input
             TextField(
               controller: controller,
               decoration:
               InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Add A Task',
                 labelStyle: TextStyle(
                   color:Color.fromRGBO(2, 48, 71,1),
                   fontSize: 22.0,
                    fontWeight:FontWeight.w700,

                 ) ,
               helperStyle: TextStyle(
                 fontSize: 20.0,
               ),
               ),
               style: TextStyle(fontSize: 20.0,
               color: Color.fromRGBO(2, 48, 71,1),
               ),


             ),
             SizedBox(
               height: 10.0,
             ),
             //buttons
            Row(
              children: [
                MyButton(text: 'save', onpressed: saveButton),
                SizedBox(
                  width: 20.0,
                ),
                MyButton(text: 'cancel', onpressed: cancleButton)
              ],
            ),
           ],
         ),
       ),
     ),
   );
  }

}