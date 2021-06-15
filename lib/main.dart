import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youchef/components/settings_screen.dart';
import 'package:youchef/data/dummy_data.dart';
import 'package:youchef/models/settings.dart';
import 'package:youchef/screens/categories_meals_screen.dart';
import 'package:youchef/screens/meal_detail_screen.dart';
import 'package:youchef/screens/tabs_screen.dart';
import 'package:youchef/utils/app_routes.dart';

import 'models/meal.dart';

void main() => runApp(YouChefApp());

class YouChefApp extends StatefulWidget {
  @override
  _YouChefAppState createState() => _YouChefAppState();
}

class _YouChefAppState extends State<YouChefApp> {
  List<Meal> _availableMeals = DUMMY_MEALS;

  void _filterMeals(Settings settings) {
    setState(() {
      _availableMeals = DUMMY_MEALS.where((meal) {
        final filterGlutem = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;
        return !filterGlutem &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

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
        AppRoutes.CATEGORIES_MEALS: (ctx) =>
            CategoriesMealsScreen(_availableMeals),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(_filterMeals),
      },
    );
  }
}
