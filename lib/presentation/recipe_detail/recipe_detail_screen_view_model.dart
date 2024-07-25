import 'package:flutter/material.dart';
import 'package:food_recipe/data/repository/chef/chef_repository.dart';
import 'package:food_recipe/data/repository/ingredient/ingredient_repository.dart';
import 'package:food_recipe/data/repository/procedure/procedure_repository.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen_ui_state.dart';

class RecipeDetailScreenViewModel with ChangeNotifier {
  final IngredientRepository _ingredientRepository;
  final ProcedureRepository _procedureRepository;
  final ChefRepository _chefRepository;

  RecipeDetailScreenViewModel({
    required IngredientRepository ingredientRepository,
    required ProcedureRepository procedureRepository,
    required ChefRepository chefRepository,
  })  : _ingredientRepository = ingredientRepository,
        _procedureRepository = procedureRepository,
        _chefRepository = chefRepository;

  RecipeDetailScreenUiState _state = const RecipeDetailScreenUiState();
  RecipeDetailScreenUiState get state => _state;

  void fetchAllData({required int recipeId, required String chefName}) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    _state = state.copyWith(
      chefInfo: await _chefRepository.getChefInfo(name: chefName),
      ingredients:
          await _ingredientRepository.getRecipeIngredients(recipeId: recipeId),
      procedures:
          await _procedureRepository.getRecipeProcedure(recipeId: recipeId),
      isLoading: false,
    );
    notifyListeners();
  }

  void changeTabType(RecipeDetailInnerTabType value) {
    _state = state.copyWith(tabType: value);
    notifyListeners();
  }
}

enum RecipeDetailInnerTabType { ingredient, procedure }
