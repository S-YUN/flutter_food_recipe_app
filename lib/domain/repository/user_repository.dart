import 'package:food_recipe/domain/model/chef.dart';

abstract interface class UserRepository{
  Future<Chef> getUserInfo();
}