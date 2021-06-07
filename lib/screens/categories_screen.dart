import 'package:flutter/material.dart';
import 'package:youchef/components/category_item.dart';
import 'package:youchef/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You Chef'),
      ),
      body: GridView(
        padding: EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children:
            DUMMY_CATEGORIES.map((category) => CategoryItem(category)).toList(),
      ),
    );
  }
}
