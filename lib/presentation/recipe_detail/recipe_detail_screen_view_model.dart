import 'package:flutter/material.dart';
import 'package:food_recipe/data/model/chef.dart';
import 'package:food_recipe/data/model/ingredient.dart';
import 'package:food_recipe/data/model/procedure.dart';
import 'package:food_recipe/data/repository/chef/chef_repository.dart';
import 'package:food_recipe/data/repository/ingredient/ingredient_repository.dart';
import 'package:food_recipe/data/repository/procedure/procedure_repository.dart';

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

  Chef _chefInfo = const Chef(
      name: '',
      location: '',
      imageUrl: '',
      recipeCount: -1,
      followers: -1,
      following: -1,
      introduce: '');
  Chef get chefInfo => _chefInfo;

  List<Ingredient> _ingredients = [];
  List<Ingredient> get ingredients => _ingredients;

  List<Procedure> _procedures = [];
  List<Procedure> get procedures => _procedures;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  RecipeDetailInnerTabType _tabType = RecipeDetailInnerTabType.ingredient;
  RecipeDetailInnerTabType get tabType => _tabType;

  void fetchAllData({required int recipeId, required String chefName}) async {
    _isLoading = true;
    notifyListeners();
    _chefInfo = await _chefRepository.getChefInfo(name: chefName);
    _ingredients =
        await _ingredientRepository.getRecipeIngredients(recipeId: recipeId);
    _procedures =
        await _procedureRepository.getRecipeProcedure(recipeId: recipeId);
    _isLoading = false;
    notifyListeners();
  }

  void changeTabType(RecipeDetailInnerTabType value) {
    _tabType = value;
    notifyListeners();
  }
}

enum RecipeDetailInnerTabType { ingredient, procedure }
