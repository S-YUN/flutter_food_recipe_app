import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';

class StarBadge extends StatelessWidget {
  final double rating;
  const StarBadge({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getWidth(40),
      height: getHeight(16),
      padding:
          EdgeInsets.symmetric(horizontal: getWidth(7), vertical: getHeight(2)),
      decoration: ShapeDecoration(
        color: ColorStyles.secondary20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: getWidth(8),
            height: getHeight(8),
            child: SvgPicture.asset(
              'assets/icons/star_bold.svg',
              colorFilter: const ColorFilter.mode(
                  ColorStyles.secondary100, BlendMode.srcATop),
            ),
          ),
          SizedBox(width: getWidth(3)),
          SizedBox(
            height: getHeight(8),
            child: Text(
              rating.toString(),
              style: TextStyle(fontSize: getHeight(8), height:1.0),
            ),
          ),
        ],
      ),
    );
  }
}
