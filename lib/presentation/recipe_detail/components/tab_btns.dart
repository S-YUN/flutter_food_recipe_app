import 'package:flutter/material.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen_view_model.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';

class TabBtns extends StatelessWidget {
  final RecipeDetailInnerTabType tabType;
  final void Function(RecipeDetailInnerTabType type) changeTap;

  const TabBtns({super.key, required this.tabType, required this.changeTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () => changeTap(RecipeDetailInnerTabType.ingredient),
          style: TextButton.styleFrom(
            foregroundColor: (tabType == RecipeDetailInnerTabType.ingredient)
                ? ColorStyles.white
                : ColorStyles.primary100,
            backgroundColor: (tabType == RecipeDetailInnerTabType.ingredient)
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
            changeTap(RecipeDetailInnerTabType.procedure);
          },
          style: TextButton.styleFrom(
            foregroundColor: (tabType == RecipeDetailInnerTabType.procedure)
                ? ColorStyles.white
                : ColorStyles.primary100,
            backgroundColor: (tabType == RecipeDetailInnerTabType.procedure)
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
