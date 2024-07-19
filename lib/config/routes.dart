import 'package:flutter/material.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/presentation/main_screen.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const MainScreen()
      ),
      GoRoute(
        path: '/recipeDetail',
        builder: (BuildContext context, GoRouterState state) {
          final recipe = state.extra as Recipe;
          return RecipeDetailScreen(
            recipe: recipe,
          );
        },
      ),
    ],
  );
}
