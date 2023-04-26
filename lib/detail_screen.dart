import 'package:flutter/material.dart';
import 'package:submission_1/model/todolist.dart';

Color backgroundColor = const Color.fromRGBO(170, 200, 167, 1);
Color cardColor = const Color.fromRGBO(201, 219, 178, 1);

class DetailScreen extends StatelessWidget {
  final TodoList todoList;

  const DetailScreen({Key? key, required this.todoList}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text('Detail Todolist'),
      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Container(
          constraints: const BoxConstraints(minWidth: double.infinity),
          child: Card(
            color: cardColor,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(todoList.date),
                      TextButton(
                        onPressed: todoList.isDone ? () {} : null, 
                        child: Text(todoList.isDone ? 'Tandai Selesai' : 'Selesai'),                 
                      )
                    ],
                  ),
                  Text(
                    todoList.title,
                    style: const TextStyle(
                      fontSize: 30
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    todoList.description,
                    style: const TextStyle(
                      fontSize: 15
                    ),
                  ),
                ],
              )
            )
          ),
        )
      )
    );
  }
}