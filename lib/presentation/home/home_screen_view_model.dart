import 'package:flutter/material.dart';
import 'package:food_recipe/domain/model/chef.dart';
import 'package:food_recipe/domain/repository/user_repository.dart';

class HomeScreenViewModel with ChangeNotifier {
  final UserRepository _userRepository;
  HomeScreenViewModel(this._userRepository) {
    fetchUserInfo();
  }

  Chef _user = const Chef(
      name: '',
      location: '',
      imageUrl: '',
      recipeCount: -1,
      followers: -1,
      following: -1,
      introduce: '');
  Chef get user => _user;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void fetchUserInfo() async {
    _isLoading = true;
    notifyListeners();
    _user = await _userRepository.getUserInfo();
    _isLoading = false;
    notifyListeners();
  }
}
