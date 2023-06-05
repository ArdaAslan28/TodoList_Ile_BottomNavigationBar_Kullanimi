import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project/screens/counter.dart';
import 'package:project/screens/hello.dart';
import 'package:project/screens/liste.dart';
import 'package:project/screens/tododetail.dart';
import 'package:project/screens/todolist.dart';
import 'package:project/screens/todolistModel2.dart';
import 'package:project/utils/anadown.dart';
import 'package:project/utils/mydrawer.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.normal);
  static const List<Widget> bodyList = <Widget>[
    Anadown(

    ),
    Counter(
      
    ),
    Hello(

    ),
    Liste(

    ),
    TodoList(

    ),
    TodoListModel(

    ),
  ];

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(_selectedIndex==0?"Ana Sayfa":_selectedIndex==1?"Counter":_selectedIndex==2?"Hello":_selectedIndex==3?"Liste":_selectedIndex==5?"TodoList":_selectedIndex==6?"TodoListModel":""),
      ),*/
      drawer: const MyDrawer(),
      body: Center(child: bodyList.elementAt(_selectedIndex),),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Hello',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Liste',
          ),
                    BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'TodoList',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'TodoListModel',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
