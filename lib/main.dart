import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(YouChefApp());

class YouChefApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You Chef',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You Chef'),
      ),
      body: Center(
        child: Text('Welcome!'),
      ),
    );
  }
}
