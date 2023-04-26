import 'package:flutter/material.dart';
import 'package:submission_1/detail_screen.dart';
import 'package:submission_1/model/todolist.dart';

Color backgroundColor = const Color.fromRGBO(170, 200, 167, 1);
Color cardColor = const Color.fromRGBO(201, 219, 178, 1);

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Weather App'),
      // ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome, Username',
                    style: TextStyle(
                      fontSize: 25
                    ),
                  ),
                  Text('Here is your todo list at the moment.'),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children: todoLists.map((todoItem) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailScreen(todoList: todoItem);
                            }));
                          },
                          child: Card(
                            color: cardColor,
                            child: Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Text(
                                            todoItem.title,
                                            style: TextStyle(
                                              fontSize: 30
                                            ),
                                          )
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Icon(todoItem.isDone ? Icons.check : Icons.close)
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      todoItem.description,
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                  ]
                                ),
                              ),
                            ),
                          )
                        );
                      }).toList()
                    ),
                  ),
                ],
              ),
            )
          )
      ),
    );
  }
}