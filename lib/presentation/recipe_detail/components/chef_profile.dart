import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/presentation/common_components/default_btn.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen_view_model.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class ChefProfile extends StatelessWidget {
  final RecipeDetailScreenViewModel viewModel;
  const ChefProfile({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(viewModel.chefInfo.imageUrl),
      ),
      title: Text(
        viewModel.chefInfo.name,
        style: TextStyles.smallTextBold,
      ),
      subtitle: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/location_bold.svg',
            width: getWidth(17),
            height: getHeight(17),
            colorFilter:
                const ColorFilter.mode(ColorStyles.primary100, BlendMode.srcIn),
          ),
          SizedBox(
            width: getWidth(5),
          ),
          Text(
            viewModel.chefInfo.location,
            style: TextStyles.regularStyle(getHeight(11), ColorStyles.gray3),
          )
        ],
      ),
      trailing: DefaultBtn(
        text: 'Follow',
        fontSize: getHeight(11),
        onPressed: () {},
        width: getWidth(85),
        height: getHeight(37),
      ),
    );
  }
}
