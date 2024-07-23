import 'package:food_recipe/data/model/chef.dart';

abstract interface class ChefApi {
  Future<Chef> getChefInfo({required String name});
}
