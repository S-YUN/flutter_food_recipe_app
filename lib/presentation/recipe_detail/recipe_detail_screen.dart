import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/presentation/common_components/rectangle_recipe_card.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';
import 'package:go_router/go_router.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;
  const RecipeDetailScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: SvgPicture.asset('assets/icons/arrow_left.svg')),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset('assets/icons/more.svg'))
        ],
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RectangleRecipeCard(
                recipe: recipe,
                hasTitle: false,
                hasChefName: false,
                hasHeroImage: true,
                heroImageTag: 'recipeImage${recipe.id.toString()}',
              ),
              SizedBox(height: getHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  showHeroTitle(),
                  reviewText()
                ],
              )
            ],
          )),
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
