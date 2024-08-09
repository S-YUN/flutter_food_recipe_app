import 'package:flutter/material.dart';
import 'package:food_recipe/config/di_setup.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/presentation/main/main_screen.dart';
import 'package:food_recipe/presentation/main/main_screen_view_model.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen_view_model.dart';
import 'package:food_recipe/presentation/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class Routes {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: '/splash',
          builder: (BuildContext context, GoRouterState state) =>
              const SplashScreen()),
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return ChangeNotifierProvider(
              create: (context) => getIt<MainScreenViewModel>(),
              child: const MainScreen(),
            );
          }),
      GoRoute(
        path: '/recipeDetail',
        builder: (BuildContext context, GoRouterState state) {
          final recipe = state.extra as Recipe;
          return ChangeNotifierProvider(
            create: (context) => getIt<RecipeDetailScreenViewModel>(),
            child: RecipeDetailScreen(
              recipe: recipe,
            ),
          );
        },
      ),
    ],
  );
}
