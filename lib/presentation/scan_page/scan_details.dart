import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fty/presentation/scan_page/scan_model.dart';

class NutritionDetailScreen extends StatelessWidget {
  // Example data
  final NutritionData nutritionData;
  final File imageFile;

  const NutritionDetailScreen(
      {Key? key, required this.nutritionData, required this.imageFile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nutritionData.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.file(imageFile),
            Text(
              nutritionData.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nutritional Information per 100g :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Calories: ${nutritionData.caloriesPer100g} kcal'),
            Text('Carbohydrates: ${nutritionData.carbohydratesPer100g} g'),
            Text('Fats: ${nutritionData.fatsPer100g} g'),
            Text('Fiber: ${nutritionData.fiberPer100g} g'),
            Text('Protein: ${nutritionData.proteinPer100g} g'),
          ],
        ),
      ),
    );
  }
}
