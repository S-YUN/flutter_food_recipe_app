import 'package:food_recipe/data/model/ingredient.dart';
import 'package:food_recipe/data/model/procedure.dart';
import 'package:food_recipe/data/model/recipe.dart';

abstract interface class RecipeApi {
  Future<List<Recipe>> getSavedRecipes();
  Future<List<Recipe>> getAllRecipes();
  Future<List<Ingredient>> getRecipeIngredients({required int recipeId});
  Future<List<Procedure>> getRecipeProcedure({required int recipeId});
}
