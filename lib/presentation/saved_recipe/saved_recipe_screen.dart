import 'package:flutter/material.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/data/repository/recipe_repository.dart';
import 'package:food_recipe/presentation/saved_recipe/components/saved_recipe_card.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class SavedRecipeScreen extends StatelessWidget {
  final RecipeRepository recipeRepository;
  const SavedRecipeScreen({super.key, required this.recipeRepository});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          scrolledUnderElevation: 0,
          elevation: 0,
          backgroundColor: ColorStyles.white,
          title: Center(
            child: Text(
              'Saved recipes',
              style: TextStyles.mediumTextBold,
            ),
          ),
        ),
        Expanded(
          child: FutureBuilder(
            future: recipeRepository.getRecipes(),
            builder: (BuildContext context, AsyncSnapshot<List<Recipe>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('No saved recipes'));
              } else {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: snapshot.data!.map((e) => SavedRecipeCard(recipe: e)).toList(),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
