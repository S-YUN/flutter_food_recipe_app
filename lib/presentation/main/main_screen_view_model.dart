import 'package:flutter/material.dart';
import 'package:food_recipe/config/di_setup.dart';
import 'package:food_recipe/presentation/home/home_screen.dart';
import 'package:food_recipe/presentation/home/home_screen_view_model.dart';
import 'package:food_recipe/presentation/notification/notification_screen.dart';
import 'package:food_recipe/presentation/profile/profile_screen.dart';
import 'package:food_recipe/presentation/saved_recipe/saved_recipe_screen.dart';
import 'package:food_recipe/presentation/saved_recipe/saved_recipe_screen_view_model.dart';
import 'package:provider/provider.dart';

class MainScreenViewModel with ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  List<Widget> _screens = [];
  List<Widget> get screens => _screens;

  MainScreenViewModel() {
    _screens = [
      ChangeNotifierProvider(
        create: (context) => getIt<HomeScreenViewModel>(),
        child: const HomeScreen(),
      ),
      ChangeNotifierProvider(
        create: (context) => getIt<SavedRecipeScreenViewModel>(),
        child: const SavedRecipeScreen(),
      ),
      const NotificationScreen(),
      const ProfileScreen(),
    ];
  }

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
