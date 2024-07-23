import 'package:flutter/material.dart';
import 'package:food_recipe/data/model/ingredient.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class IngredientListTile extends StatelessWidget {
  final Ingredient ingredient;
  const IngredientListTile({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getHeight(10)),
      child: Container(
        height: getHeight(76),
        decoration: ShapeDecoration(
          color: const Color(0xFFECECEC),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: getHeight(12), horizontal: getWidth(15)),
          child: Row(
            children: [
              Container(
                width: getWidth(52),
                height: getHeight(52),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Image(
                  width: getWidth(40),
                  height: getHeight(40),
                  image: (ingredient.imageUrl.startsWith('http'))
                      ? NetworkImage(ingredient.imageUrl) // Valid web URL
                      : const AssetImage(
                          'assets/images/default_ingredient.png'),
                ),
              ),
              SizedBox(
                width: getWidth(5),
              ),
              Text(
                ingredient.name,
                style: TextStyles.boldStyle(
                    getHeight(16), const Color(0xFF121212)),
              ),
              const Spacer(),
              Text(
                '${ingredient.weight.toString()}g',
                style: TextStyles.regularStyle(
                    getHeight(14), const Color(0xFFA9A9A9)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
