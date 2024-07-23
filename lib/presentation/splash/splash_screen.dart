import 'package:flutter/material.dart';
import 'package:food_recipe/presentation/common_components/default_btn.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(375),
      height: getHeight(812),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/splash.png',
            width: getWidth(375),
          ),
          Positioned(
              left: getWidth(66),
              top: getHeight(674),
              child: DefaultBtn(
                text: 'Start Cooking',
                onPressed: () {
                  context.go('/');
                },
                width: getWidth(243),
                height: getHeight(54),
                hasIcon: true,
              )),
        ],
      ),
    );
  }
}
