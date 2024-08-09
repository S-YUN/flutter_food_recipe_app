import 'package:flutter/material.dart';
import 'package:food_recipe/presentation/home/components/welcome_header.dart';
import 'package:food_recipe/presentation/home/home_screen_view_model.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeScreenViewModel>();
    return (viewModel.isLoading)
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
          child: Column(
            children: [
              SizedBox(height: getHeight(30)),
              WelcomeHeader(name: viewModel.user.name, imageUrl: viewModel.user.imageUrl,),
              SizedBox(height: getHeight(30)),
            ],
          ),
        );
  }
}
