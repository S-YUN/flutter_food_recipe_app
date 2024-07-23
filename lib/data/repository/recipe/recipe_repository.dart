import 'package:food_recipe/data/model/recipe.dart';

abstract interface class RecipeRepository {
  Future<List<Recipe>> getSavedRecipes();
}
