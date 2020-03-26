import 'package:flutter/material.dart';
import 'package:foodselection/components/meal_item.dart';
import '../models/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static final String screenId = 'CategoryMealsScreen';
//  final String categoryId;
//  final String categoryTitle;
//
//  const CategoryMealsScreen({Key key, this.categoryId, this.categoryTitle})
//      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            var meal = categoryMeals[index];
            return MealItem(
                id: meal.id,
                title: meal.title,
                imageUrl: meal.imageUrl,
                duration: meal.duration,
                complexity: meal.complexity,
                affordability: meal.affordability);
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
