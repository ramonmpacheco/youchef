import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youchef/screens/categories_screen.dart';

void main() => runApp(YouChefApp());

class YouChefApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You Chef',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoriesScreen(),
    );
  }
}
