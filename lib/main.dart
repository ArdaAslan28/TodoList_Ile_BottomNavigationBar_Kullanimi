import 'package:flutter/material.dart';
import 'package:project/models/todo.dart';
import 'package:project/screens/counter.dart';
import 'package:project/screens/hello.dart';
import 'package:project/screens/liste.dart';
import 'package:project/screens/todolist.dart';
import 'package:project/screens/todolistModel2.dart';
import 'package:project/screens/welcome.dart';
import 'package:project/utils/anadown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: const TodoListModel(),
      initialRoute: "/",
      routes: {
        "/":(context) =>  const Counter(),
        "hello":(context) => const Hello(),
        "liste":(context) =>  const Liste(),
        "todolist":(context) =>  const TodoList(),
        "todolistmodel":(context) => const TodoListModel(),
        "welcome":(context) => const Welcome(),
        "anaDown":(context) => const Anadown(),
      },
    );
  }
}


