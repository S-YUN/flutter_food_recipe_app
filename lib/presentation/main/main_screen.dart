import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/presentation/common_components/custom_bottom_nav_bar.dart';
import 'package:food_recipe/presentation/main/main_screen_view_model.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainScreenViewModel>();
    return Scaffold(
      backgroundColor: ColorStyles.white,
      body: SafeArea(
            child: IndexedStack(
          index: viewModel.currentIndex,
          children: viewModel.screens,
        )),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: viewModel.currentIndex,
        onTap: viewModel.changeIndex,
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
