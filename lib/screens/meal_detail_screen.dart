import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static final String screenId = 'MealDetailScreen';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('$mealId'),
      ),
      body: Text('the meal $mealId'),
    );
  }
}
