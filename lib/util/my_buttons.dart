import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget
{
  final String text;
  VoidCallback onpressed;
  MyButton(
  {
   super.key,
   required this.text,
   required this.onpressed
  }
      );
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
        child: Text(text,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Rubik',

          ),
        ),
     color: Color.fromRGBO(212, 163, 115,1),


    );
  }

}