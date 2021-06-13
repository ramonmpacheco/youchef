import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youchef/components/settings_screen.dart';
import 'package:youchef/screens/categories_meals_screen.dart';
import 'package:youchef/screens/meal_detail_screen.dart';
import 'package:youchef/screens/tabs_screen.dart';
import 'package:youchef/utils/app_routes.dart';

void main() => runApp(YouChefApp());

class YouChefApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'You Chef',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
    );
  }
}
