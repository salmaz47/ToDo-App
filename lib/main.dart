import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_app/Pages/start_page.dart';


import 'Pages/home_page.dart';

void main() async {
   await Hive.initFlutter();
   var box = await Hive.openBox('myBox');

  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: StartPage(),
    );
  }
}


