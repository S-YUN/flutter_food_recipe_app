import 'package:food_recipe/data/data_source/recipe/recipe_api.dart';
import 'package:food_recipe/data/model/ingredient.dart';
import 'package:food_recipe/data/repository/ingredient/ingredient_repository.dart';

class IngredientRepositoryImpl implements IngredientRepository {
  final RecipeApi _recipeApi;

  IngredientRepositoryImpl({required RecipeApi recipeApi})
      : _recipeApi = recipeApi;

  @override
  Future<List<Ingredient>> getRecipeIngredients({required int recipeId}) async {
    try {
      final data = await _recipeApi.getRecipeIngredients(recipeId: recipeId);
      return data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
