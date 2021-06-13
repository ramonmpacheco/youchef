import 'package:flutter/material.dart';
import 'package:youchef/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Configurações'),
      ),
    );
  }
}
