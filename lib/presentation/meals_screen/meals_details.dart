import 'package:flutter/material.dart';

import 'meals_model.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(recipe.imageLink),
            SizedBox(height: 16.0),
            Text(
              recipe.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text('Nutritional Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text('Calories: ${recipe.calories} kcal'),
            Text('Carbohydrates: ${recipe.carbohydrateContent} g'),
            Text('Cholesterol: ${recipe.cholesterolContent} mg'),
            Text('Fat: ${recipe.fatContent} g'),
            Text('Fiber: ${recipe.fiberContent} g'),
            Text('Protein: ${recipe.proteinContent} g'),
            Text('Saturated Fat: ${recipe.saturatedFatContent} g'),
            Text('Sodium: ${recipe.sodiumContent} mg'),
            Text('Sugar: ${recipe.sugarContent} g'),
            SizedBox(height: 16.0),
            Text('Cook Time: ${recipe.cookTime} minutes'),
            Text('Prep Time: ${recipe.prepTime} minutes'),
            Text('Total Time: ${recipe.totalTime} minutes'),
            SizedBox(height: 16.0),
            Text('Ingredients',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...recipe.recipeIngredientParts
                .map((ingredient) => Text('- $ingredient'))
                .toList(),
            SizedBox(height: 16.0),
            Text('Instructions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...recipe.recipeInstructions
                .map((instruction) => Text('- $instruction'))
                .toList(),
          ],
        ),
      ),
    );
  }
}
