import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';

class DefaultBtn extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  final bool isActive;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? btnColor;
  final Color? textColor;
  final bool? hasIcon;
  final double? iconSize;

  const DefaultBtn({
    super.key,
    required this.text,
    required this.onPressed,
    this.isActive = true,
    this.width,
    this.height,
    this.fontSize,
    this.btnColor,
    this.textColor,
    this.hasIcon,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isActive ? onPressed : null,
      style: TextButton.styleFrom(
        foregroundColor: textColor ?? ColorStyles.white,
        backgroundColor: isActive ? ColorStyles.primary100 : ColorStyles.gray4,
        minimumSize: Size(
          width ?? getWidth(315),
          height ?? getHeight(60),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize ?? getHeight(16),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          if (hasIcon != null) ...[
            SizedBox(width: getWidth(16)),
            SvgPicture.asset(
              'assets/icons/arrow_right.svg',
              width: iconSize ?? getWidth(20),
              height: iconSize ?? getHeight(20),
              colorFilter:
                  const ColorFilter.mode(ColorStyles.white, BlendMode.srcIn),
            ),
          ],
        ],
      ),
    );
  }
}
