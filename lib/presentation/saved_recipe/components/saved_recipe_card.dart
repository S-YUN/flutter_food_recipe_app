import 'package:flutter/material.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/presentation/common_components/rectangle_recipe_card.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:go_router/go_router.dart';

class SavedRecipeCard extends StatelessWidget {
  final Recipe recipe;

  const SavedRecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(10)),
      child: GestureDetector(
        onTap: () {
          context.push('/recipeDetail', extra: recipe);
        },
        child: RectangleRecipeCard(
          recipe: recipe,
          hasHeroImage: true,
          hasHeroTitle: true,
          heroImageTag: 'recipeImage${recipe.id.toString()}',
          heroTitleTag: 'recipeTitle${recipe.id.toString()}',

        ),
      ),
    );
  }
}
