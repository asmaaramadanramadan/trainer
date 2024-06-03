class NutritionData {
  final int caloriesPer100g;
  final double carbohydratesPer100g;
  final double fatsPer100g;
  final double fiberPer100g;
  final String name;
  final double proteinPer100g;

  NutritionData({
    required this.caloriesPer100g,
    required this.carbohydratesPer100g,
    required this.fatsPer100g,
    required this.fiberPer100g,
    required this.name,
    required this.proteinPer100g,
  });

  factory NutritionData.fromJson(Map<String, dynamic> json) {
    return NutritionData(
      caloriesPer100g: json['calories_per_100g'],
      carbohydratesPer100g: json['carbohydrates_per_100g'],
      fatsPer100g: json['fats_per_100g'],
      fiberPer100g: json['fiber_per_100g'],
      name: json['name'],
      proteinPer100g: json['protein_per_100g'],
    );
  }
}
