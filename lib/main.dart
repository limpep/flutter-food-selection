import 'package:flutter/material.dart';
import 'package:foodselection/screens/category_meals_screen.dart';
import 'package:foodselection/screens/filters_screen.dart';
import 'package:foodselection/screens/meal_detail_screen.dart';
import 'package:foodselection/screens/tabs_screen.dart';

import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli Meals',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold),
            ),
      ),
      initialRoute: TabsScreen.screenId,
      routes: {
        TabsScreen.screenId: (context) => TabsScreen(),
        CategoriesScreen.screenId: (context) => CategoriesScreen(),
        CategoryMealsScreen.screenId: (context) => CategoryMealsScreen(),
        MealDetailScreen.screenId: (context) => MealDetailScreen(),
        FiltersScreen.screenId: (context) => FiltersScreen(),
      },
//      onGenerateRoute: (settings) {
//        print(settings.arguments);
//        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
//      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
