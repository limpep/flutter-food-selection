import 'package:flutter/material.dart';
import 'package:foodselection/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({Key key, this.title, this.color, this.id})
      : super(key: key);

  void selectCategory(BuildContext ctx) {
    Navigator.pushNamed(
      ctx,
      CategoryMealsScreen.screenId,
      arguments: {'id': id, 'title': title},
    );

//    Navigator.of(ctx).p(
//      MaterialPageRoute(builder: (_) {
//        return CategoryMealsScreen(
//          categoryTitle: title,
//          categoryId: id,
//        );
//      }),
//    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(title, style: Theme.of(context).textTheme.title),
      ),
    );
  }
}
