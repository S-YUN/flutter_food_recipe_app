import 'package:food_recipe/domain/model/chef.dart';

abstract interface class ChefRepository {
  Future<Chef> getChefInfo({required String name});
}
