import 'package:food_recipe/data/data_source/recipe/recipe_api.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/data/repository/recipe/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeApi _recipeApi;

  RecipeRepositoryImpl({required RecipeApi recipeApi}) : _recipeApi = recipeApi;

  @override
  Future<List<Recipe>> getSavedRecipes() async {
    try {
      final data = await _recipeApi.getSavedRecipes();
      return data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
