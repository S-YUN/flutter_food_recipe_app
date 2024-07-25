import 'package:flutter/material.dart';
import 'package:food_recipe/presentation/saved_recipe/components/saved_recipe_card.dart';
import 'package:food_recipe/presentation/saved_recipe/saved_recipe_screen_view_model.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';
import 'package:provider/provider.dart';

class SavedRecipeScreen extends StatelessWidget {
  const SavedRecipeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SavedRecipeScreenViewModel>();
    return (viewModel.state.isLoading)
        ? const Center(child: CircularProgressIndicator())
        : Column(
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
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: viewModel.state.savedRecipes
                      .map((recipe) => SavedRecipeCard(recipe: recipe))
                      .toList(),
                ),
              )),
            ],
          );
  }
}
