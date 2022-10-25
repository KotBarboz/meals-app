import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meal.dart';
import 'package:flutter_complete_guide/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;
  FavoritesScreen(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty)
      return Center(
        child: Text('You have no favorites yet'),
      );
    else {
      return ListView.builder(
        itemCount: favoritesMeals.length,
        itemBuilder: (ctx, i) {
          return MealItem(
            title: favoritesMeals[i].title,
            imageUrl: favoritesMeals[i].imageUrl,
            affordability: favoritesMeals[i].affordability,
            complexity: favoritesMeals[i].complexity,
            duration: favoritesMeals[i].duration,
            id: favoritesMeals[i].id,
          );
        },
      );
    }
  }
}
