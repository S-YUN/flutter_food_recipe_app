import 'package:food_recipe/domain/model/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_recipe_screen_ui_state.freezed.dart';

@freezed
class SavedRecipeScreenUiState with _$SavedRecipeScreenUiState {
  const factory SavedRecipeScreenUiState({
    @Default([]) List<Recipe> savedRecipes,
    @Default(false) isLoading,
  }) = _SavedRecipeScreenUiState;
}
