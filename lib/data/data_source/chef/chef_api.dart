import 'package:food_recipe/domain/model/chef.dart';

abstract interface class ChefApi {
  Future<Chef> getChefInfo({required String name});
}
