import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget
{
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  TodoTile (
      {
        super.key,
        required this.taskName,
        required this.taskCompleted,
        required this.onChanged,
        required this.deleteFunction,
      }
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25.0,
        left: 25.0,
        right: 25.0
      ),
      child: Slidable(
        endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                  onPressed: deleteFunction ,
                  icon: Icons.delete,
                  foregroundColor: Colors.white,
                backgroundColor: Color.fromRGBO(2, 48, 71,1),
                borderRadius: BorderRadius.circular(15.0),
              )
            ]
        ),
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                //CHECK BOX
                Checkbox(value: taskCompleted
                    , onChanged: onChanged,
                  activeColor:Color.fromRGBO(2, 48, 71,1),
                ),
                // TEXT  NAME
                Text(
                  taskName,
                  style: TextStyle(
                    fontSize: 25.0,
                    color:Color.fromRGBO(2, 48, 71,1),
                    decoration:  taskCompleted? TextDecoration.lineThrough : TextDecoration.none,
                    fontFamily: 'Rubik_black',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color.fromRGBO(250, 237, 205,1),
            ),
          ),
      ),

    );
  }

}