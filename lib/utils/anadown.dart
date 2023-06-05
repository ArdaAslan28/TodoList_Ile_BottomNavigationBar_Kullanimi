import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project/screens/counter.dart';
import 'package:project/screens/hello.dart';
import 'package:project/screens/liste.dart';
import 'package:project/screens/tododetail.dart';
import 'package:project/screens/todolist.dart';
import 'package:project/screens/todolistModel2.dart';
import 'package:project/utils/mydrawer.dart';

class Anadown extends StatefulWidget {
  const Anadown({super.key});

  @override
  State<Anadown> createState() => _AnadownState();
}

class _AnadownState extends State<Anadown> {

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ana Sayfa"),
      ),
      
      body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
        children: const [
          SizedBox(
            height: 1000,
          ),
           Text("Ana Sayfa", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal,)),
        ],
      ),
    );
}
}