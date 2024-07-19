import 'package:food_recipe/data/data_source/recipe_api.dart';
import 'package:food_recipe/data/model/recipe.dart';

class RecipeApiFake implements RecipeApi {
  @override
  Future<List<Recipe>> getSavedRecipes() async {
    await Future.delayed( const Duration(seconds: 2));
    return [
      Recipe(
        id: 1,
        title: 'Traditional spare ribs baked',
        chef: 'Chef John',
        rating: 4.0,
        cookingTime: 20,
        isFavorite: true,
        imgUrl:
            'https://s3-alpha-sig.figma.com/img/2234/134e/6e53ef9148ab9085bbd1369e270f0bba?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LyANfzjdS5Xbm-AZrc65fZVi0sr1C-5gCnOOWnhXZN7sYpxwvQvzQEzIJrWHOysWtgD53uE1BymNR63QCvw~bxsU4GxFyk4xtTTg3Ctkvm2HllUF4Jvi~2p4FTUWKHnXwPZ3Is5XBw4uM5setFUWSyHGTTyHc9xRGYHBqreZn5~wLDd4KsuUTQJBbKlsEsTtESQ5vpZa4HgUnSXM-Bpuvcy8ydRFlEXhoaGPA16DfdOY0ofith6FEO~baORgRP~WT4K5t9m1xzi69LZGYec-w35X~XYjLFQZPpzEv0TFTglKdIt9xqb8cc92no1yvDeVCBI-eZoDQpjcSoO1k5qa4w__',
      ),
      Recipe(
        id: 2,
        title: 'spice roasted chicken with flavored rice',
        chef: 'Mark Kelvin',
        rating: 4.0,
        cookingTime: 20,
        isFavorite: true,
        imgUrl:
            'https://s3-alpha-sig.figma.com/img/94a5/dab4/32e7c160269453dc8f5072b693f1d1d3?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=N7~k2ufuxoMbAseI2ChdCKnFpdIF53pQbI5rJpsG3e07burm8tYvHTmRsuHDXo62GlFvTZm~RhMU~3zrMTaHl1wMfK6bT885fteojOzulyd~Dp6SCiK-vOlWHftGwT7SfirxF2NlIUaBPWzn1OE8Zp0zCWLyk8pnM4gmXjptrTyBaXQHCK5e8XXkBbCVWIRCkcYsovbGAEgK9oZ4riiF69ykL4FC~AYP65XANIgQZN2TrkTwMP6qDTUQI2dKaaGTpsK3SZrAeSkQfVOd4M3cnKPQrLEc4id-Kl45BmqJPRfayvYEvxnVm1cm1Cm-qHuTLClz1L608Y4QZkmLn0HxVg__',
      ),
      Recipe(
        id: 3,
        title: 'Spicy fried rice mix chicken bali',
        chef: 'Spicy Nelly',
        rating: 4.0,
        cookingTime: 20,
        isFavorite: true,
        imgUrl:
            'https://s3-alpha-sig.figma.com/img/2fcb/d544/559e1d3d17f51640b7e705c80290a38e?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dXqVpj~Mi5~XmAg4yyrlspy-84zrTZGIAQ2ZSy~lO0ewSCw1KlzykvxBnOpu9X7oUmYYuLFAmw0u1pFr~ky2oJgJBEGjKQM-w6JUaqvv3-6BkTr1~LKHeYl37ZBBWkFt9tPFpg39QmZ8ATwJqd37cxIYxeOYlLgdUSyq~-aJzkMIuMnMdgn3FJjrOujIGOrycYggcFjK5JMwml~bj78TTm103Uh0Dvg474UKSeXDZ9t8OQyQDXN7Hx7iZscsoAmn-4SBA4yCbEC1TtTSLSNG5qvsQ4weAJgm02I9R~s90~OtrACzSybsOpilii40GkpZjGvPsLxINj5Xkl-uDqKsCg__',
      ),
      Recipe(
        id: 4,
        title: 'Lamb chops with fruity couscous and mint',
        chef: 'picy Nelly',
        rating: 3.0,
        cookingTime: 20,
        isFavorite: true,
        imgUrl:
            'https://s3-alpha-sig.figma.com/img/fc80/5ac0/b22dfc924203e88c81c2fe25c83a2267?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qogB6yAwBILB6P9cox7QhqrcFZ6Adf57onxEA654rq2xmfbU3BV6iBcMKVaTOfWLSv51apom7DhBiQ3QxcJkp7vo5rcL7YluIZOuVMZh~aXGGuM5g~m0wU~wVrMim5CLBLHUmlDWyNHCYRlO7oI1ZDRmXJNMJ7JBGRfW5zWfNXYy23nwag5fJ50LoDjz1sUW7dwXJUulI42lZ2mQcXYV~nFVx03arl0-qejGcnIHaiMdfsh9yUbS99Orkwg5RuHw-qwK1RkzZQWyndHoZZHFDmE3dH6k-OhBOqfDhD9M5P9EHb2kqlMI7QhaE22lulJgpGDI5vAvnEaGFz5yByYaoQ__',
      ),
    ];
  }
}
