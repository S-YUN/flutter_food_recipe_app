import 'package:food_recipe/data/data_source/chef/chef_api.dart';
import 'package:food_recipe/domain/model/chef.dart';

class ChefApiFake implements ChefApi {
  @override
  Future<Chef> getChefInfo({required String name}) {
    switch (name) {
      case 'Laura wilson':
        return Future.value(
          const Chef(
              name: 'Laura wilson',
              location: 'Lagos, Nigeria',
              imageUrl:
                  'https://s3-alpha-sig.figma.com/img/9b37/65ef/6e15f500f33fd641033e430dabb8ea4e?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iICf8FmNEOodk5oxnW6Mq0fN3DX5bf63t5sJEt~JFctkFIwBySrya6GfwzITGEpshLLtfSKZ078j8aY490YCkeXcupj-dY6Y9KfiR8NPElTtsGT1C8sJEE91ESLesYaxLBxyyToOfVGEpZjYRBHy0qWGWkeKQQQBpCmPYEDA0Fy8nbqwKmF9tqZ~YisoJKywLir8LyYx0p2kAnkSsUTZlHNkBIc9MYDma29WIvlOxanxOkQEapTd6bm6a7GTFrbqIzZwwhLs--GbfPOiaFeU1-xqGdFkhFYD5pL90rnZvuKwG9JvxYiJMQDWJ3mBzPUhNPjUAj-P8~HQZ5Qv~vphsQ__',
              recipeCount: 3,
              followers: 213,
              following: 441,
              introduce: 'Hi, Enjoy My Recieps'),
        );
      case 'Chef John':
        return Future.value(
          const Chef(
              name: 'Chef John',
              location: 'Lagos, Nigeria',
              imageUrl: '',
              recipeCount: 15,
              followers: 4123,
              following: 312,
              introduce: 'Hi, Enjoy My Recieps'),
        );
      case 'Mark Kelvin':
        return Future.value(
          const Chef(
              name: 'Mark Kelvin',
              location: 'NewYork, America',
              imageUrl: '',
              recipeCount: 5,
              followers: 201,
              following: 202,
              introduce: 'Hi, Enjoy My Recieps'),
        );
      case 'Spicy Nelly':
        return Future.value(
          const Chef(
              name: 'Spicy Nelly',
              location: 'NewYork, America',
              imageUrl: '',
              recipeCount: 15,
              followers: 3523,
              following: 312,
              introduce: 'Hi, Enjoy My Recieps'),
        );
      case 'picy Nelly':
        return Future.value(
          const Chef(
              name: 'picy Nelly',
              location: 'Vancouver, Canada',
              imageUrl: '',
              recipeCount: 25,
              followers: 5100,
              following: 60,
              introduce: 'Hi, Enjoy My Recieps'),
        );
      default:
        return Future.error('Chef not found');
    }
  }
}
