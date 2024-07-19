import 'package:flutter/material.dart';
import 'package:food_recipe/presentation/saved_recipe/components/saved_recipe_card.dart';
import 'package:food_recipe/presentation/saved_recipe/saved_recipe_screen_view_model.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class SavedRecipeScreen extends StatelessWidget {
  final SavedRecipeScreenViewModel viewModel;
  const SavedRecipeScreen({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (BuildContext context, Widget? child) {
        return (viewModel.isLoading)
            ? const Center(child:  CircularProgressIndicator())
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
                      children: viewModel.savedRecipes
                          .map((recipe) => SavedRecipeCard(recipe: recipe))
                          .toList(),
                    ),
                  )),
                ],
              );
      },
    );
  }
}
