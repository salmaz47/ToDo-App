import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/data/database.dart';
import 'package:todo_app/util/todotile.dart';
import 'package:todo_app/util/dailogbox.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage>
{

  final myBox = Hive.box('myBox');
  ToDoDataBase db = ToDoDataBase();
  void initState()
  {
    if (myBox.get('TODOLIST') == null)
      {
        db.createInitialData();
      }
    else
      {
        db.loadData();
      }

    super.initState();
  }
  final _conyroller = TextEditingController();

  void saveNewTask()
  {
    setState(() {
      db.toDoTasks.add([_conyroller.text,false]);
      _conyroller.clear();
    });
    Navigator.of(context).pop();
  }
  void checkBoxChecked(bool? value,index)
  {
   setState(() {
     db.toDoTasks[index][1] = !db.toDoTasks[index][1];
   });
   db.updateDataBase();
  }

  // Create New Task
  void createNewTask()
  {
    showDialog(
        context: context,
        builder: (context)
        {
         return DailogBox(
           controller: _conyroller,
           cancleButton: ()=> Navigator.of(context).pop(),
           saveButton: saveNewTask,
         );
        },
    );

  }
  void deleteTask(int num)
  {
     setState(() {
       db.toDoTasks.removeAt(num);
     });
     db.updateDataBase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(254, 250, 224,1),
      appBar:  AppBar(
         centerTitle: true,
         backgroundColor: Color.fromRGBO(212, 163, 115,1),
          elevation: 0,
          title: Text(
            'TO DO',
            style: TextStyle(
              fontSize: 30.0,
             fontFamily: 'Pacifico',
             fontWeight: FontWeight.w500,
             // fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35.0,
        ),
        backgroundColor:Color.fromRGBO(212, 163, 115,1),
      ),
      body: ListView.builder(
        itemCount: db.toDoTasks.length,
        itemBuilder: (context,index)
        {
            return TodoTile(
                taskName: db.toDoTasks[index][0],
                taskCompleted:db.toDoTasks[index][1],
                onChanged: (value) => checkBoxChecked(value,index),
                deleteFunction: (context) => deleteTask(index),
            );
        },
      ),
    );
  }
  
}