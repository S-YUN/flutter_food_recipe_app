import 'package:flutter/material.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:food_recipe/ui/text_styles.dart';

class WelcomeHeader extends StatelessWidget {
  final String name;
  final String imageUrl;
  const WelcomeHeader({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Hello $name',
        style: TextStyles.largeTextBold,
      ),
      subtitle: Text(
        'What are you cooking today?',
        style: TextStyles.regularStyle(getHeight(11), ColorStyles.gray3),
      ),
      trailing: _userImage(),
    );
  }

  Widget _userImage() {
    return Container(
      width: getWidth(40),
      height: getHeight(40),
      decoration: ShapeDecoration(
        color: const Color(0xFFFFCE80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Image(
        image: (imageUrl.isNotEmpty)
            ? NetworkImage(imageUrl)
            : const AssetImage('assets/images/profile_default.png'),
      ),
    );
  }
}
