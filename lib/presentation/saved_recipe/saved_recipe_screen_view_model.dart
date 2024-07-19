import 'package:flutter/material.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/data/repository/recipe_repository.dart';

class SavedRecipeScreenViewModel with ChangeNotifier {
  final RecipeRepository _recipeRepository;

  SavedRecipeScreenViewModel(this._recipeRepository) {
    fetchSavedRecipes();
  }
  List<Recipe> _savedRecipes = [];
  List<Recipe> get savedRecipes => _savedRecipes;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void fetchSavedRecipes() async {
    _isLoading = true;
    notifyListeners();
    _savedRecipes = await _recipeRepository.getSavedRecipes();
    _isLoading = false;
    notifyListeners();
  }
}
