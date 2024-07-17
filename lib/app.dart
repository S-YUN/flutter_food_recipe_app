import 'package:flutter/material.dart';
import 'package:food_recipe/data/data_source/recipe_api_fake.dart';
import 'package:food_recipe/data/repository/recipe_repository_impl.dart';
import 'package:food_recipe/presentation/main_screen.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final recipeApi = RecipeApiFake();
    final recipeRepository = RecipeRepositoryImpl(recipeApi: recipeApi);

    SizeConfig().init(context);

    return MaterialApp(
      title: 'Food Recipe',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: ColorStyles.primary100,
       
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(
        recipeRepository: recipeRepository,
      ),
    );
  }
}
