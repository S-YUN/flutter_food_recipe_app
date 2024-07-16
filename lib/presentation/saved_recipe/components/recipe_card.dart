import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(10)),
      child: SizedBox(
        width: getWidth(315),
        height: getHeight(150),
        child: Stack(
          children: [
            Positioned(
              left: getWidth(0),
              top: getHeight(0),
              child: Container(
                width: getWidth(315),
                height: getHeight(150),
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(recipe.imgUrl),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: getWidth(0),
              top: getHeight(0),
              child: Container(
                width: getWidth(315),
                height: getHeight(150),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(getWidth(0.0), getHeight(-1.0)),
                    end: Alignment(getWidth(0.0), getHeight(1.0)),
                    colors: [Colors.black.withOpacity(0), Colors.black],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: getWidth(281),
              top: getHeight(116),
              child: Container(
                width: getWidth(24),
                height: getHeight(24),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Center(
                    child: SvgPicture.asset(
                  'assets/icons/bookmark_active.svg',
                  width: getWidth(16),
                  height: getHeight(16),
                )),
              ),
            ),
            Positioned(
              left: getWidth(268),
              top: getHeight(10),
              child: Container(
                width: getWidth(37),
                height: getHeight(16),
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(7), vertical: getHeight(2)),
                decoration: ShapeDecoration(
                  color: ColorStyles.secondary20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: getWidth(8),
                      height: getHeight(8),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/star_bold.svg',
                        colorFilter: const ColorFilter.mode(
                            ColorStyles.secondary100, BlendMode.srcATop),
                      )),
                    ),
                    SizedBox(width: getWidth(3)),
                    Text(
                      recipe.rating.toString(),
                      textAlign: TextAlign.right,
                      style: TextStyles.regularStyle(getHeight(7)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: getWidth(10),
              top: getHeight(86),
              child: SizedBox(
                width: getWidth(200),
                height: getHeight(42),
                child: Text(recipe.title,
                    style:
                        TextStyles.boldStyle(getHeight(14), ColorStyles.white)),
              ),
            ),
            Positioned(
              left: getWidth(10),
              top: getHeight(128),
              child: Text(
                'By ${recipe.chef}',
                style: TextStyles.regularStyle(
                  getHeight(8),
                  ColorStyles.gray4,
                ),
              ),
            ),
            Positioned(
              left: getWidth(211),
              top: getHeight(116),
              child: Container(
                width: getWidth(65),
                height: getHeight(24),
                padding: EdgeInsets.symmetric(vertical: getHeight(3.5)),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: getWidth(17),
                      height: getHeight(17),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/timer.svg',
                        colorFilter: const ColorFilter.mode(
                            ColorStyles.white, BlendMode.srcATop),
                      )),
                    ),
                    SizedBox(width: getWidth(5)),
                    Text(
                      '${recipe.cookingTime.toString()} min',
                      style: TextStyles.regularStyle(
                          getHeight(11), ColorStyles.gray4),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
