import 'package:food_recipe/data/data_source/chef/chef_api.dart';
import 'package:food_recipe/data/data_source/chef/chef_api_fake.dart';
import 'package:food_recipe/data/data_source/recipe/recipe_api.dart';
import 'package:food_recipe/data/data_source/recipe/recipe_api_fake.dart';
import 'package:food_recipe/data/repository/chef_repository_impl.dart';
import 'package:food_recipe/data/repository/ingredient_repository_impl.dart';
import 'package:food_recipe/data/repository/procedure_repository_impl.dart';
import 'package:food_recipe/data/repository/recipe_repository_impl.dart';
import 'package:food_recipe/data/repository/user_repository_impl.dart';
import 'package:food_recipe/domain/repository/chef_repository.dart';
import 'package:food_recipe/domain/repository/ingredient_repository.dart';
import 'package:food_recipe/domain/repository/procedure_repository.dart';
import 'package:food_recipe/domain/repository/recipe_repository.dart';
import 'package:food_recipe/domain/repository/user_repository.dart';
import 'package:food_recipe/presentation/home/home_screen_view_model.dart';
import 'package:food_recipe/presentation/main/main_screen_view_model.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen_view_model.dart';
import 'package:food_recipe/presentation/saved_recipe/saved_recipe_screen_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void diSetup() {
  //data source -> singleton
  getIt.registerSingleton<ChefApi>(ChefApiFake());
  getIt.registerSingleton<RecipeApi>(RecipeApiFake());

  //repository -> singleton
  getIt.registerSingleton<IngredientRepository>(
      IngredientRepositoryImpl(recipeApi: getIt()));
  getIt.registerSingleton<ChefRepository>(ChefRepositoryImpl(chefApi: getIt()));
  getIt.registerSingleton<ProcedureRepository>(
      ProcedureRepositoryImpl(recipeApi: getIt()));
  getIt.registerSingleton<RecipeRepository>(
      RecipeRepositoryImpl(recipeApi: getIt()));
  getIt.registerSingleton<UserRepository>(UserRepositoryImpl());

  //viewmodel -> factory
  getIt.registerFactory(() => RecipeDetailScreenViewModel(
        ingredientRepository: getIt(),
        procedureRepository: getIt(),
        chefRepository: getIt(),
      ));
  getIt.registerFactory(() => SavedRecipeScreenViewModel(
        getIt(),
      ));
  getIt.registerFactory(() => MainScreenViewModel());
  getIt.registerFactory(() => HomeScreenViewModel(getIt()));
}
