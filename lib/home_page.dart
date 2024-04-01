import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo_tile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
      List toDoList =[
        ["Make Tutorial", false],
        ["Do Exercise", false],
      ];

    void checkBoxChange(bool value, int index){
      setState(() {
        toDoList(index)(1) =!toDoList(index)(1);
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.yellow[200],
    appBar: AppBar( 
      title: Text('TO DO'),
      elevation: 0,
    ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
             taskCompleted: toDoList[index][1],
              onChanged: (value)=>  checkBoxChange(value, index),
              
              );
        },

      ),

        
      );
    
  
  }
}