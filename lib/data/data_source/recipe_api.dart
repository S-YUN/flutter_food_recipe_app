import 'package:food_recipe/data/model/recipe.dart';

abstract interface class RecipeApi {
  Future<List<Recipe>> fetchSavedRecipes();
}
