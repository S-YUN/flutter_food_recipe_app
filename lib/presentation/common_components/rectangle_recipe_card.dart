import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/presentation/common_components/star_badge.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class RectangleRecipeCard extends StatelessWidget {
  final Recipe recipe;
  final bool hasTitle;
  final bool hasChefName;
  final bool hasHeroImage;
  final bool hasHeroTitle;
  final String heroImageTag;
  final String heroTitleTag;

  const RectangleRecipeCard({
    super.key,
    required this.recipe,
    this.hasTitle = true,
    this.hasChefName = true,
    this.hasHeroImage = false,
    this.hasHeroTitle = false,
    this.heroImageTag = '',
    this.heroTitleTag = '',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(315),
      height: getHeight(150),
      child: Stack(
        children: [
          Positioned(
            left: getWidth(0),
            top: getHeight(0),
            child: hasHeroImage ? heroRecipeImage() : recipeImage(),
          ),
          Positioned(
            left: getWidth(281),
            top: getHeight(116),
            child: bookmarkBadge(),
          ),
          Positioned(
            left: getWidth(268),
            top: getHeight(10),
            child: StarBadge(rating: recipe.rating),
          ),
          Positioned(
            left: getWidth(10),
            top: getHeight(86),
            child: buildTitleWidget(),
          ),
          Positioned(
            left: getWidth(10),
            top: getHeight(128),
            child: hasChefName ? showChef() : const SizedBox(),
          ),
          Positioned(
            left: getWidth(211),
            top: getHeight(116),
            child: showTime(),
          ),
        ],
      ),
    );
  }

  Widget recipeImage() {
    return Container(
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
      child: Container(
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black.withOpacity(0), Colors.black],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget heroRecipeImage() {
    return Hero(
      tag: heroImageTag,
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
        child: Container(
          decoration: ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black.withOpacity(0), Colors.black],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget bookmarkBadge() {
    return Container(
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
    );
  }

  Widget buildTitleWidget() {
    if (hasTitle && hasHeroTitle) {
      return showHeroTitle();
    }
    if (hasTitle) {
      return showTitle();
    } else {
      return const SizedBox();
    }
  }

  Widget showTitle() {
    return SizedBox(
      width: getWidth(200),
      height: getHeight(42),
      child: Text(recipe.title,
          style: TextStyles.boldStyle(getHeight(14), ColorStyles.white)),
    );
  }

  Widget showHeroTitle() {
    return Hero(
      tag: heroTitleTag,
      child: Material(
        color: Colors.transparent,
        child: SizedBox(
          width: getWidth(200),
          height: getHeight(42),
          child: Text(recipe.title,
              style: TextStyles.boldStyle(getHeight(14), ColorStyles.white)),
        ),
      ),
    );
  }

  Widget showChef() {
    return Text(
      'By ${recipe.chef}',
      style: TextStyles.regularStyle(
        getHeight(8),
        ColorStyles.gray4,
      ),
    );
  }

  Widget showTime() {
    return Container(
      width: getWidth(65),
      height: getHeight(24),
      padding: EdgeInsets.symmetric(vertical: getHeight(3.5)),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
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
              ),
            ),
          ),
          SizedBox(width: getWidth(5)),
          Text(
            '${recipe.cookingTime.toString()} min',
            style: TextStyles.regularStyle(getHeight(11), ColorStyles.gray4),
          ),
        ],
      ),
    );
  }
}
