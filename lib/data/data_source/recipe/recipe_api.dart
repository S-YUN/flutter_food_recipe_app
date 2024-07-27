import 'package:food_recipe/domain/model/ingredient.dart';
import 'package:food_recipe/domain/model/procedure.dart';
import 'package:food_recipe/domain/model/recipe.dart';

abstract interface class RecipeApi {
  Future<List<Recipe>> getSavedRecipes();
  Future<List<Recipe>> getAllRecipes();
  Future<List<Ingredient>> getRecipeIngredients({required int recipeId});
  Future<List<Procedure>> getRecipeProcedure({required int recipeId});
}
