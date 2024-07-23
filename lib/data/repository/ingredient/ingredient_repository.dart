import 'package:food_recipe/data/model/ingredient.dart';

abstract interface class IngredientRepository {
  Future<List<Ingredient>> getRecipeIngredients({required int recipeId});
}
