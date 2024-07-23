import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen_view_model.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class TabContentInfo extends StatelessWidget {
  final RecipeDetailScreenViewModel viewModel;
  const TabContentInfo({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getHeight(25.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/icons/serve.svg',
            width: getWidth(17),
            height: getHeight(17),
            colorFilter:
                const ColorFilter.mode(ColorStyles.gray3, BlendMode.srcIn),
          ),
          SizedBox(
            width: getWidth(5),
          ),
          Text(
            '1 serve',
            style: TextStyles.regularStyle(getHeight(11), ColorStyles.gray3),
          ),
          const Spacer(),
          Text(
            (viewModel.tabType == RecipeDetailInnerTabType.ingredient)
                ? '${viewModel.ingredients.length} Items'
                : '${viewModel.procedures.length} Steps',
            style: TextStyles.regularStyle(getHeight(11), ColorStyles.gray3),
          )
        ],
      ),
    );
  }
}
