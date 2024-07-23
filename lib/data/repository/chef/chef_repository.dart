import 'package:food_recipe/data/model/chef.dart';

abstract interface class ChefRepository {
  Future<Chef> getChefInfo({required String name});
}
