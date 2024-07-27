import 'package:food_recipe/domain/model/recipe.dart';

abstract interface class RecipeRepository {
  Future<List<Recipe>> getSavedRecipes();
}
