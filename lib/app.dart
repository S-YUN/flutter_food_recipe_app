import 'package:flutter/material.dart';
import 'package:food_recipe/config/routes.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp.router(
      title: 'Food Recipe',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: ColorStyles.primary100,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: Routes.router,
    );
  }
}
