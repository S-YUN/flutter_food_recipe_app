import 'package:food_recipe/data/data_source/chef/chef_api.dart';
import 'package:food_recipe/data/model/chef.dart';
import 'package:food_recipe/data/repository/chef/chef_repository.dart';

class ChefRepositoryImpl implements ChefRepository {
  final ChefApi _chefApi;

  ChefRepositoryImpl({required ChefApi chefApi}) : _chefApi = chefApi;

  @override
  Future<Chef> getChefInfo({required String name}) async {
    try {
      final data = await _chefApi.getChefInfo(name: name);
      return data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
