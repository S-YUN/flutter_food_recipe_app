import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: ColorStyles.white,
        notchMargin: 0.0,
        child: SizedBox(
          height: getHeight(72),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildNavItem('assets/icons/home_inactive.svg',
                      'assets/icons/home_active.svg', 0),
                  _buildNavItem('assets/icons/bookmark_inactive.svg',
                      'assets/icons/bookmark_active.svg', 1),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildNavItem('assets/icons/notification_inactive.svg',
                      'assets/icons/notification_active.svg', 2),
                  _buildNavItem('assets/icons/profile_inactive.svg',
                      'assets/icons/profile_active.svg', 3),
                ],
              )
            ],
          ),
        ));
  }

  Widget _buildNavItem(
      String inactiveIconPath, String activeIconPath, int index) {
    final isSelected = currentIndex == index;

    return MaterialButton(
      onPressed: () => onTap(index),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: SvgPicture.asset(
        isSelected ? activeIconPath : inactiveIconPath,
        height: getHeight(24),
        width: getWidth(24),
      ),
    );
  }
}
