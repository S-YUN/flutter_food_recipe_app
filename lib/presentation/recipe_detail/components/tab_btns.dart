import 'package:flutter/material.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen_view_model.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';

class TabBtns extends StatelessWidget {
  final RecipeDetailScreenViewModel viewModel;
  const TabBtns({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            viewModel.changeTabType(RecipeDetailInnerTabType.ingredient);
          },
          style: TextButton.styleFrom(
            foregroundColor:
                (viewModel.tabType == RecipeDetailInnerTabType.ingredient)
                    ? ColorStyles.white
                    : ColorStyles.primary100,
            backgroundColor:
                (viewModel.tabType == RecipeDetailInnerTabType.ingredient)
                    ? ColorStyles.primary100
                    : ColorStyles.white,
            minimumSize: Size(
              getWidth(150),
              getHeight(33),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Ingredient',
            style: TextStyle(fontSize: getHeight(11)),
          ),
        ),
        TextButton(
          onPressed: () {
            viewModel.changeTabType(RecipeDetailInnerTabType.procedure);
          },
          style: TextButton.styleFrom(
            foregroundColor:
                (viewModel.tabType == RecipeDetailInnerTabType.procedure)
                    ? ColorStyles.white
                    : ColorStyles.primary100,
            backgroundColor:
                (viewModel.tabType == RecipeDetailInnerTabType.procedure)
                    ? ColorStyles.primary100
                    : ColorStyles.white,
            minimumSize: Size(
              getWidth(150),
              getHeight(33),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Procedure',
            style: TextStyle(fontSize: getHeight(11)),
          ),
        ),
      ],
    );
  }
}
