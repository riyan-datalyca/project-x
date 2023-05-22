import 'dart:io';
import 'package:flutter/material.dart';
import 'package:project_x/home/login/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Placeholder(child: Text("Public Image SlideShow"),)),
          Expanded(child: Container(child: Text('My Image Grid View'),))
        ],
      ),
    );
  }
}
