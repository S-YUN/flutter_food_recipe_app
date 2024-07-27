import 'package:flutter/material.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/presentation/common_components/rectangle_recipe_card.dart';

class RecipeImgae extends StatelessWidget {
  final Recipe recipe;
  const RecipeImgae({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return RectangleRecipeCard(
      recipe: recipe,
      hasTitle: false,
      hasChefName: false,
      hasHeroImage: true,
      heroImageTag: 'recipeImage${recipe.id.toString()}',
    );
  }
}
