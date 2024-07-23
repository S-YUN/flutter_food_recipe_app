import 'package:flutter/material.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class RecipeTitle extends StatelessWidget {
  final Recipe recipe;
  const RecipeTitle({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [showHeroTitle(), reviewText()],
    );
  }

  Widget showHeroTitle() {
    return Hero(
      tag: 'recipeTitle${recipe.id.toString()}',
      child: Material(
        color: Colors.transparent,
        child: SizedBox(
          width: getWidth(194),
          height: getHeight(41),
          child: Text(
            recipe.title,
            style: TextStyles.boldStyle(getHeight(14), ColorStyles.black),
          ),
        ),
      ),
    );
  }

  Widget reviewText() {
    return Text('(13k Reviews)',
        style: TextStyles.regularStyle(getHeight(14), ColorStyles.gray3));
  }
}
