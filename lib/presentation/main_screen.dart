import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/data/data_source/recipe/recipe_api_fake.dart';
import 'package:food_recipe/data/repository/recipe/recipe_repository_impl.dart';
import 'package:food_recipe/presentation/common_components/custom_bottom_nav_bar.dart';
import 'package:food_recipe/presentation/home/home_screen.dart';
import 'package:food_recipe/presentation/notification/notification_screen.dart';
import 'package:food_recipe/presentation/profile/profile_screen.dart';
import 'package:food_recipe/presentation/saved_recipe/saved_recipe_screen.dart';
import 'package:food_recipe/presentation/saved_recipe/saved_recipe_screen_view_model.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      const HomeScreen(),
      ChangeNotifierProvider(
        create: (context) => SavedRecipeScreenViewModel(
            RecipeRepositoryImpl(recipeApi: RecipeApiFake())),
        child: const SavedRecipeScreen(),
      ),
      const NotificationScreen(),
      const ProfileScreen(),
    ];
  }

  void _changeScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.white,
      body: SafeArea(child: _screens[_currentIndex]),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _changeScreen,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: ColorStyles.primary100,
        onPressed: () {},
        child: SvgPicture.asset(
          'assets/icons/plus.svg',
          height: getHeight(22),
          width: getWidth(22),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
