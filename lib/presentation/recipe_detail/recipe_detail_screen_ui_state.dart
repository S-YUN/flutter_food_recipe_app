import 'package:food_recipe/data/model/chef.dart';
import 'package:food_recipe/data/model/ingredient.dart';
import 'package:food_recipe/data/model/procedure.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail_screen_ui_state.freezed.dart';

@freezed
class RecipeDetailScreenUiState with _$RecipeDetailScreenUiState {
  const factory RecipeDetailScreenUiState({
    @Default(Chef(
      name: '',
      location: '',
      imageUrl: '',
      recipeCount: -1,
      followers: -1,
      following: -1,
      introduce: '')) Chef chefInfo,
    @Default([]) List<Ingredient> ingredients, 
    @Default([]) List<Procedure> procedures, 
    @Default(false) isLoading,
    @Default(RecipeDetailInnerTabType.ingredient) RecipeDetailInnerTabType tabType,
      
  }) = _RecipeDetailScreenUiState;

}