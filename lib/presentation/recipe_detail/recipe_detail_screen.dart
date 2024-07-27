import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/domain/model/recipe.dart';
import 'package:food_recipe/presentation/recipe_detail/components/chef_profile.dart';
import 'package:food_recipe/presentation/recipe_detail/components/ingredient_list_tile.dart';
import 'package:food_recipe/presentation/recipe_detail/components/procedure_list_tile.dart';
import 'package:food_recipe/presentation/recipe_detail/components/recipe_imgae.dart';
import 'package:food_recipe/presentation/recipe_detail/components/recipe_title.dart';
import 'package:food_recipe/presentation/recipe_detail/components/tab_btns.dart';
import 'package:food_recipe/presentation/recipe_detail/components/tab_content_info.dart';
import 'package:food_recipe/presentation/recipe_detail/recipe_detail_screen_view_model.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class RecipeDetailScreen extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetailScreen({super.key, required this.recipe});

  @override
  State<RecipeDetailScreen> createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<RecipeDetailScreenViewModel>();
      viewModel.fetchAllData(
          recipeId: widget.recipe.id, chefName: widget.recipe.chef);
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<RecipeDetailScreenViewModel>();
    return Scaffold(
      backgroundColor: ColorStyles.white,
      appBar: AppBar(
        backgroundColor: ColorStyles.white,
        leading: IconButton(
            padding: EdgeInsets.only(left: getWidth(30)),
            onPressed: () {
              context.pop();
            },
            icon: SvgPicture.asset('assets/icons/arrow_left.svg')),
        actions: [
          IconButton(
              padding: EdgeInsets.only(right: getWidth(30)),
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/more.svg'))
        ],
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecipeImgae(recipe: widget.recipe),
              SizedBox(height: getHeight(10)),
              RecipeTitle(recipe: widget.recipe),
              ChefProfile(
                chefInfo: viewModel.state.chefInfo,
              ),
              TabBtns(
                tabType: viewModel.state.tabType,
                changeTap: viewModel.changeTabType,
              ),
              TabContentInfo(
                tabType: viewModel.state.tabType,
                ingredientLength: viewModel.state.ingredients.length,
                procedureLength: viewModel.state.procedures.length,
              ),
              (viewModel.state.tabType == RecipeDetailInnerTabType.ingredient)
                  ? Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: viewModel.state.ingredients
                            .map((ingredient) =>
                                IngredientListTile(ingredient: ingredient))
                            .toList(),
                      ),
                    )
                  : Expanded(
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: viewModel.state.procedures
                            .map((procedure) =>
                                ProcedureListTile(procedure: procedure))
                            .toList(),
                      ),
                    ),
            ],
          )),
    );
  }
}
