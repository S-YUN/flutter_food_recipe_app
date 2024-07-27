import 'package:flutter/material.dart';
import 'package:food_recipe/domain/repository/recipe_repository.dart';
import 'package:food_recipe/presentation/saved_recipe/saved_recipe_screen_ui_state.dart';

class SavedRecipeScreenViewModel with ChangeNotifier {
  final RecipeRepository _recipeRepository;

  SavedRecipeScreenViewModel(this._recipeRepository) {
    fetchSavedRecipes();
  }
  SavedRecipeScreenUiState _state = const SavedRecipeScreenUiState();
  SavedRecipeScreenUiState get state => _state;

  void fetchSavedRecipes() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    _state = state.copyWith(
        savedRecipes: await _recipeRepository.getSavedRecipes(),
        isLoading: false);
    notifyListeners();
  }
}
