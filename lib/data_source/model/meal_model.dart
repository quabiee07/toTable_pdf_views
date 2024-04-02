import 'dart:convert';

List<ReceiptDto> receiptDtoFromJson(String str) => List<ReceiptDto>.from(json.decode(str).map((x) => ReceiptDto.fromJson(x)));

String receiptDtoToJson(List<ReceiptDto> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ReceiptDto {
    final String mealtypeId;
    final String mealtypeName;
    final List<Meal> meals;

    ReceiptDto({
        required this.mealtypeId,
        required this.mealtypeName,
        required this.meals,
    });

    factory ReceiptDto.fromJson(Map<String, dynamic> json) => ReceiptDto(
        mealtypeId: json["mealtype_id"],
        mealtypeName: json["mealtype_name"],
        meals: List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "mealtype_id": mealtypeId,
        "mealtype_name": mealtypeName,
        "meals": List<dynamic>.from(meals.map((x) => x.toJson())),
    };
}

class Meal {
    final String mealId;
    final String mealDescription;
    final DateTime mealDate;
    final int mealPrepTime;
    final List<Recipe> recipes;

    Meal({
        required this.mealId,
        required this.mealDescription,
        required this.mealDate,
        required this.mealPrepTime,
        required this.recipes,
    });

    factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        mealId: json["meal_id"],
        mealDescription: json["meal_description"],
        mealDate: DateTime.parse(json["meal_date"]),
        mealPrepTime: json["meal_prep_time"],
        recipes: List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "meal_id": mealId,
        "meal_description": mealDescription,
        "meal_date": mealDate.toIso8601String(),
        "meal_prep_time": mealPrepTime,
        "recipes": List<dynamic>.from(recipes.map((x) => x.toJson())),
    };
}

class Recipe {
    final String recipeId;
    final String recipeName;
    final String recipeDescription;
    final int recipeTotalTime;
    final List<RecipeIngredient> recipeIngredients;
    final List<RecipeInstruction> recipeInstructions;

    Recipe({
        required this.recipeId,
        required this.recipeName,
        required this.recipeDescription,
        required this.recipeTotalTime,
        required this.recipeIngredients,
        required this.recipeInstructions,
    });

    factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        recipeId: json["recipe_id"],
        recipeName: json["recipe_name"],
        recipeDescription: json["recipe_description"],
        recipeTotalTime: json["recipe_total_time"],
        recipeIngredients: List<RecipeIngredient>.from(json["recipe_ingredients"].map((x) => RecipeIngredient.fromJson(x))),
        recipeInstructions: List<RecipeInstruction>.from(json["recipe_instructions"].map((x) => RecipeInstruction.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "recipe_id": recipeId,
        "recipe_name": recipeName,
        "recipe_description": recipeDescription,
        "recipe_total_time": recipeTotalTime,
        "recipe_ingredients": List<dynamic>.from(recipeIngredients.map((x) => x.toJson())),
        "recipe_instructions": List<dynamic>.from(recipeInstructions.map((x) => x.toJson())),
    };
}

class RecipeIngredient {
    final String recipeId;
    final String ingredientName;
    final String foodId;
    final String ingredientDescription;
    final String measurementDescription;
    final double quantity;

    RecipeIngredient({
        required this.recipeId,
        required this.ingredientName,
        required this.foodId,
        required this.ingredientDescription,
        required this.measurementDescription,
        required this.quantity,
    });

    factory RecipeIngredient.fromJson(Map<String, dynamic> json) => RecipeIngredient(
        recipeId: json["recipe_id"],
        ingredientName: json["ingredient_name"],
        foodId: json["food_id"],
        ingredientDescription: json["ingredient_description"],
        measurementDescription: json["measurement_description"],
        quantity: json["quantity"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "recipe_id": recipeId,
        "ingredient_name": ingredientName,
        "food_id": foodId,
        "ingredient_description": ingredientDescription,
        "measurement_description": measurementDescription,
        "quantity": quantity,
    };
}

class RecipeInstruction {
    final String recipeId;
    final int displayorder;
    final String directionDescription;

    RecipeInstruction({
        required this.recipeId,
        required this.displayorder,
        required this.directionDescription,
    });

    factory RecipeInstruction.fromJson(Map<String, dynamic> json) => RecipeInstruction(
        recipeId: json["recipe_id"],
        displayorder: json["displayorder"],
        directionDescription: json["direction_description"],
    );

    Map<String, dynamic> toJson() => {
        "recipe_id": recipeId,
        "displayorder": displayorder,
        "direction_description": directionDescription,
    };
}
