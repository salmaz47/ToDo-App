import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase
{
  List toDoTasks =[];
  final myBox = Hive.box('myBox');
  void createInitialData ()
  {
    toDoTasks =
        [
          ['Make a ToDo App',false],
          ['Practice drawing',true],
        ];
  }
  void loadData()
  {
      toDoTasks = myBox.get('TODOLIST');
  }
  void updateDataBase()
  {
          myBox.put('TODOLIST', toDoTasks);
  }
}