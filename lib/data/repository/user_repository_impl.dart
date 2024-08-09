import 'package:food_recipe/domain/model/chef.dart';
import 'package:food_recipe/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<Chef> getUserInfo() async {
    Chef user = const Chef(
      name: 'Seoyun',
      location: 'Seoul',
      imageUrl: '',
      recipeCount: 0,
      followers: 0,
      following: 13,
      introduce: '안녕하세요. 요리왕이 되고 싶은 자취생입니다',
    );
    return user;
  }
}
