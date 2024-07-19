import 'package:flutter/material.dart';
import 'package:food_recipe/data/data_source/recipe_api_fake.dart';
import 'package:food_recipe/data/model/recipe.dart';
import 'package:food_recipe/data/repository/recipe_repository_impl.dart';
import 'package:food_recipe/presentation/main_screen.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen.dart';
import 'package:food_recipe/presentation/saved_recipe/saved_recipe_screen_view_model.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          final recipeApi = RecipeApiFake();
          final recipeRepository = RecipeRepositoryImpl(recipeApi: recipeApi);
          final savedRecipeScreenViewModel = SavedRecipeScreenViewModel(recipeRepository);
          return MainScreen(savedRecipeScreenViewModel: savedRecipeScreenViewModel);
        },
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
