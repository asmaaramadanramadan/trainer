class Recipe {
  final double calories;
  final double carbohydrateContent;
  final double cholesterolContent;
  final int cookTime;
  final double fatContent;
  final double fiberContent;
  final String name;
  final int prepTime;
  final double proteinContent;
  final int recipeId;
  final List recipeIngredientParts;
  final List recipeInstructions;
  final double saturatedFatContent;
  final double sodiumContent;
  final double sugarContent;
  final int totalTime;
  final String imageLink;

  Recipe({
    required this.calories,
    required this.carbohydrateContent,
    required this.cholesterolContent,
    required this.cookTime,
    required this.fatContent,
    required this.fiberContent,
    required this.name,
    required this.prepTime,
    required this.proteinContent,
    required this.recipeId,
    required this.recipeIngredientParts,
    required this.recipeInstructions,
    required this.saturatedFatContent,
    required this.sodiumContent,
    required this.sugarContent,
    required this.totalTime,
    required this.imageLink,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      calories: json['Calories'],
      carbohydrateContent: json['CarbohydrateContent'],
      cholesterolContent: json['CholesterolContent'],
      cookTime: json['CookTime'],
      fatContent: json['FatContent'],
      fiberContent: json['FiberContent'],
      name: json['Name'],
      prepTime: json['PrepTime'],
      proteinContent: json['ProteinContent'],
      recipeId: json['RecipeId'],
      recipeIngredientParts: json['RecipeIngredientParts'],
      recipeInstructions: json['RecipeInstructions'],
      saturatedFatContent: json['SaturatedFatContent'],
      sodiumContent: json['SodiumContent'],
      sugarContent: json['SugarContent'],
      totalTime: json['TotalTime'],
      imageLink: json['image_link'],
    );
  }
}
