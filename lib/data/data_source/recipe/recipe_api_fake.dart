import 'package:food_recipe/data/data_source/recipe/recipe_api.dart';
import 'package:food_recipe/domain/model/ingredient.dart';
import 'package:food_recipe/domain/model/procedure.dart';
import 'package:food_recipe/domain/model/recipe.dart';

class RecipeApiFake implements RecipeApi {
  @override
  Future<List<Recipe>> getSavedRecipes() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      Recipe(
        id: 1,
        title: 'Traditional spare ribs baked',
        chef: 'Chef John',
        rating: 4.0,
        cookingTime: 20,
        isFavorite: true,
        imgUrl:
            'https://s3-alpha-sig.figma.com/img/2234/134e/6e53ef9148ab9085bbd1369e270f0bba?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NXLmcOJmJIkwLgY-cCwxY8hG4wfSPa08~staTxuqKLndPSCPdStKxNLuhU7axr3X8fs-hCujha2ztr~Kha-u2RygjMzgEpin4P78XMTMCp2V6na4-8n4gm3OGen5PwI8s9EDMrYP49SHrQOb6KUl69f9xfdIzBylYiMaModLJoKQc87jZRc4tsCcxVObtes6VU5khRq2EaoYcSYIr25cXVaVmAEjYItnNyug0bO0XQL4dOlU0dHQJCt7U7zcngCGEYwKapn5xL7pjB0ItFjiiQj7dobH6ajgLRtR8qfv~CcaGHdrB9qPQgCcDZ0Q9g-MRqzJZKyjMhyoHGIS4dblEQ__',
      ),
      Recipe(
        id: 2,
        title: 'spice roasted chicken with flavored rice',
        chef: 'Mark Kelvin',
        rating: 4.0,
        cookingTime: 20,
        isFavorite: true,
        imgUrl:
            'https://s3-alpha-sig.figma.com/img/94a5/dab4/32e7c160269453dc8f5072b693f1d1d3?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QL0AFFQy7o0vnsnuGBHeVL6vywekBpE7xRRLNXH2z0xJAGCuJghrSmdB73T5MD5DTiUL~0Go0KAURadRd6cq8DMculfeQDEh2me6SBuOXMNyLgYrx0XyywpGfJxtQid1ZtKphoTvxgYZegpBEq1l2BN-iahNh3GcuGsG9ECo4oA~oJAlTKVfEuRqhz5BcCLDTv2SntG-3KNoaerLdFPcov-euHoosMy0S9ZHbVjc2fummRg~Ynrn1b~fS7Ygj2LvKSZZvq9bJmv8Yhq2FUfrsZ2vUfUJpC4HhWYQl~PDzIkwPBXeg5qkWKx1vOM75BFaaj5W8kEJxxHjTXqD92pxjA__',
      ),
      Recipe(
        id: 3,
        title: 'Spicy fried rice mix chicken bali',
        chef: 'Spicy Nelly',
        rating: 4.0,
        cookingTime: 20,
        isFavorite: true,
        imgUrl:
            'https://s3-alpha-sig.figma.com/img/2fcb/d544/559e1d3d17f51640b7e705c80290a38e?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=P73hiYMoK1b9unDi3yuzswwDcGecxQyLlCcwmvc4HyQUPkdHQ1DBCiQKWZWtwBiv1348R85ATUMCZzKHV2VYKKGilcOw7AXYGTsr5zftsqu1fOWV1TwWi1Gl9bo3~qpbaBtc1ewLDCNdk931vftFXsuM83nzkXNi8u5GA0sgimkDVo5uW58UWXj~IZggWRilT~p1HZnMGdo7xAHA-6f2ieJa4OWTukoX~0eNxfSXnzMi4nIrh42p6YtVUGIzlfuvV80DMnZ6SQHg-XJx1oFExO0XfAYrAXdzrilaetl9vk2KeNGjmkdxkwacGlka8-JH8ybNT8baw2n89fHvGJomOw__',
      ),
      Recipe(
        id: 4,
        title: 'Lamb chops with fruity couscous and mint',
        chef: 'picy Nelly',
        rating: 3.0,
        cookingTime: 20,
        isFavorite: true,
        imgUrl:
            'https://s3-alpha-sig.figma.com/img/fc80/5ac0/b22dfc924203e88c81c2fe25c83a2267?Expires=1724025600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FYGNYkIMl8q~rhNYY9pw~J2p6zDjMNmYbgweGbPIdt~76~y9KoE23qMlCpe9MQPAbL~ZH0mc9wHOg5cfwLsmIpquLaIRbePPC7KNElBOo1~Y3bqnWZ32rIIPVC84WBliMEVwYu33gwCRFE5cvds5uhtQym-B7f~p3-UxpBByOoVMTI6zuMCrhEF92A0FYYNoEuKNf8-hR79vintbZrCGpAiRSCcOnMd992uB59ill4OjZC1Jb-PNaSsLycc~D3uWRw2aYj~jo~JPlSxpPtkAy8ya5H9kPptvHhVdatLmYss8Us8xsOqAokHfYmep17RtBiVb2CCnE4nNs8defZZfQw__',
      ),
    ];
  }

  @override
  Future<List<Recipe>> getAllRecipes() async {
    // TODO: implement getAllRecipes
    throw UnimplementedError();
  }

  @override
  Future<List<Ingredient>> getRecipeIngredients({required int recipeId}) async {
    // 일단은 id 뭘 던지든 똑같이 리턴.
    return const [
      Ingredient(
          name: 'Tomatos',
          weight: 500,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/3c30/4e61/3dd3e1dd1f7360a6ef1c04399b0609ab?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fWs7y5TTKZZpkF9HeIRgmRp~lT6VWAxGBh8JiyinQ7U~bzDAGaPvkG4GF3F6l8LsPsAX2FvmsIl-xoud12N8oqZl5y9f8f5flASVtO5-6XBfWRMlDYo3Zl0SHajjKZNa4Ii2OcdyfII5xf8hOz3zRqElcTGyAKAieNw4Do9GEU-~wVUQ8BBfVreGZcEdpuV6shE4JaGk5Ht7nei0G0H85iOdZQrsabP8O8ZWIkSAtnATcsGe2HAIQsQumYZhrpvgvEbX0pHOqbGVZXiaty5-p2gCgMcIva~ZHr7ydk22cDnMd4ypEfD7rS~vE5twGq4wtoFRY4btxw1O~AvsoTcTWw__'),
      Ingredient(
          name: 'Cabbage',
          weight: 300,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/c4b7/357b/e814ea5a6e1ead7b4cd7e47338d9823d?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SVOhQrcFyn72FUaX77bRXeb1B1iH47oCfcshQZM8jZ8tZ07Jm~CWcA5lrqY7DM9RH3KPPYpNAiBYvJWvcKEPVauJjOs0gYizhHeZNdR3icVbdMezRTJDeedqrGb64F-kzyYv5D8B45QQZeCTS8c5gsyi8Xucv-TFqW3Yp5IDM8RjzRe7Y6eJw5xKu8oGsPfsM9iuVtaCZn7mFSP4s-XAOGWRJFVL5gHduQW38B~3qtrm8naOKQey5~tZ1sTGEObb~r-AiiE6eWR5yYRJ8t3YVIoVQg1Sr3fxz~-9MPEf0~kkbmT0Jv7ym3ullWS8sn7n55UOVPqGRI3dRBFcDd3gxA__'),
      Ingredient(
          name: 'Taco',
          weight: 300,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/ac60/0470/bed72926848499c366186da9346e0e6e?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=R65KJbDOYOCBio4P17pT2LptKMntbG-JVQvHg433-OryLV~Q8uYce4j4l1hh4b0oZD2AMIiWkpWErUOeZz6Gu47nA59yb1AOH1jXnJ1AcpS-OmAgL7TFaubuMrNhUbW5Nu0ylwm7uOkxgRgFQ0ZiWpTjGRj2WaRb5CFDQNtdB2~fvY~PK18fhIHnEw34IbpKjhukjxfw8Rqzwyze-pqgLfY0czPl9sGudZgO6EkNRgc82w0qCdNYTKVTZcB7ckcdrUK9zPjp12SS2kGzWGgRPU0CX1HwzUFYwr9xqYcJ98NHl1El7w6DW1suQ8W9Ap4~U8XF5-S~XteLM8tahnbI~Q__'),
      Ingredient(
          name: 'Slice Bread',
          weight: 300,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/61af/36f6/6a515fa814b8372e02f1ae569cff3ebd?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bG~6JWj6gvDCy6Tjix2aN4-SsaeZ0pyUfGsuMwQLdI6bqFDZNzCq7jp1j64qUDHRodSsSfXdJWHASKqjDP2yP~cmSjMALm6D9RkehlFwvQbVl1DxNLESgpwSfbfVwFiheZU1yCsiFX4wSKDn~bkoMOs6QD~g9qIP1BajjgbSOQzNjX8KBZmjlKMUCIRAlXbzfhfSb0XZEqWdvRqZ0ByNWa7u49OvS6gZRTyhTrxQGbMgiJ3Nj46yhxwzcJqabHNW7j0mCPFaXwlag9dVNVVrYn4ja33WeXX6l8V1E60moteE~Gu-xV02c7DPkwPtbp9xCd74N~Fie7jtYA8phtJqnw__'),
      Ingredient(
          name: 'Green onion',
          weight: 300,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/9775/5ce0/b97b5ce3e7dfe66199dc58fd6f89b111?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=X7p77uu4w4LidB9VYFc1lbGXFQUmQUiSctrTgUfgUWd8aI~aDrW210HX7Z-5pXXZuiZWZng1HqeWbpgxxoATdSpKyQo7vqjMGnqz-n0~8GiGdKmzFIbDbdwpptqqlSgUL~UhN7za1gUKHol4bO3mPG66THyQX6gZc3b2fiz8ry8SWfjrJwZ6QujmyVnfSzTC2uHiR27d0Y5HdOzqDXVaySwq4A2XMOKf8~FeB05FZSF1~6VQ2z80UrDMEXuoemvQ4CgJaGqdiX7~9cDQMwXoElSKM8Slx8jYRR0uLxY7iCMz5lwIZCVwYjtr-5UuXo59GhTZYcIqbLToBYegHur-jw__'),
      Ingredient(
          name: 'Omelette',
          weight: 250,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/1957/5076/bd04a3ccbe87e733609ea46f6bffb8bc?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=KR-4XPlOhCXEfUeHJbnKpORX2cJcvkRi3xR6XvU9L9AYJgx~gnusBhaf-yqLQHkdw72Pn8XNBhgbTVoySjIYg8eDa0s-A7NkKozWS330mLAeDTQ0YDWNU0XfkiB2fhHT38xo2o3vdEmKNHSn3RDQXS4kU7pNC5imDNSFA61C31QkmtSXmHziaZskIJgoG3Rj3KtuZ2r1ViFmmUX8Xv6EXbmGPUmVL3z920OVAceK-eCdA~0XwmQzsL92XsMZFdtVmF-xPynxf3GK-dChQJ3ThpEWYS7CHCmbL-naPZ7GhFrZlrtoGCpxkNWq7m3d3N4i0VVQMFJ5r7vHDYHntF2hDA__'),
      Ingredient(
          name: 'Hot Dog',
          weight: 300,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/cd9e/59a3/4b1339db10977951a3d634c4c042d089?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=apxz6NdWO4Uxpti3bA6tnO7nm4YMCanKRtu-CNmaFPL3OPAD8QXiXMWjn0~xdtn-rSd1-1cIt~FFgPk4YDUthoWUIDn9Njq9DTsuCRbeH2-z17OVqZymDPZ~nEpVFJDK-x55MvJzGbYJWsGevFSk4i4lwKHSJRs89gEvCUfYfKAmnfZFp9XtSi9e6GwOvaVvEotVURbjcJRo0OEZ4xxmStupTNaetbC7ILBU5rGzNpbU~ArVUHZIC4yU-oSDZ0xJY6TI7jcyd2jchbPuJqc28tX1NcJp0vVwzdigUE2a-wFRrYz~pvK~3qmNIJYJU~KgcFZucIaQCih8MNjIDb~b6A__'),
      Ingredient(
          name: 'Onion',
          weight: 200,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/89bd/ebfc/fa8b5d9ad5a295f56fb5b3035552c6ff?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=TcHRfeQ9Zmb2h0Ri51NELF5mBaosgX6Jj-TnMPRSyGIRUU6vmtDykgOt0pZhhYuvEp6JsPGto1-DFkVQEhdQg0PDqCH~FayotZoJSodEpvVOaWO2x1KEU6ZUaG3AUAdV7a7ozTxSwjGV69QD6R83a9A2XRgwLabHEbvUQBLCL4FLuI7jHDwLA4fl~CmSn5kjwIirQgURN0AhJ9Nc73z0HHsjRMMcZRqxJSsFOTig~ggopExfGPQauuEfWDLzBtPRRu3z~1eswvQmSFL1GfGMpAAFH8r6~ewghvLozytZol7AhowpD7yIKNqjycTzz4Tty-G1EUS-CctB8h1uG25Nag__'),
      Ingredient(
          name: 'Lettuce',
          weight: 150,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/6d9b/8fcd/57e14287253e4bb3edf581024323fbc1?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ohKeKDQIrb5rhc4vxFXyi8-wq0pMybdWxAXB9lCOnaJyuwlB~9UmHBjhf2vIeqvi9UgrqjL6a9b39qRXgdq4VuVZaIxPD1HEPmZXZNxiDqYCGeUro82X1nhWYeAbfII7EXGkmp18z6c0o-6kdie3FIk8V8ll6JNesAuQ5BlEfGxPCJnAKJkbX6NRE7YPLGdsYi7AoIluCNCEP4YrFYFTmY7axnElOW7gW8G45fpKv6dZ4kbCqe7-ZdbRuwxC6pu-kKEVgFyEuovUQ7~te-8xqQ-GQJ82ap4izNvuMt4DEPAVlnaHQIZnKsrbm4FAKq0psNvOhkpgDi3zm81EU29Bxw__'),
      Ingredient(
          name: 'Spinach',
          weight: 100,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/bbdf/4555/1b21f48b16e5cf72cd64b4653cf684da?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bUYEu~fWh2HzW-PgCutI1QWJxxix82rS9K15gIVzJfbLWzkUOXMNQgsk-Wj4ByQAOMpkVutkzo0ashhbjl3KrrlEAqlQqguKAV0XZQ8eVu7rBKuSvXU9vV1Dn5ech-bWeqcxprTW2FQVoJDIZA0oOLIa-8NxEF9ANmGlgeUcfRcBTNZliOZ4MYsnddZ4McIYhuSsBpaNsNjOQq15l-PsM8YyRMrz-Tqnk-Sg5c1QF9cw4vvk0-7JwXmVYZ0HeJvaVz6yoWaP9JJHG6O6WN4-nCA0~~91N8-Mf9esqo~TSYpuoKFrskXeRW-VFIpU1mniq-2QkKwKdTvaush7e7j5Ig__'),
      Ingredient(
          name: 'Chilli',
          weight: 50,
          imageUrl:
              'https://s3-alpha-sig.figma.com/img/21f2/8804/fba133295ad696fef7d6de5ea9bc837f?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qMruDw5H2jIqXhNymU3qaW1DWeY8YOlB4EhFcDyasvbjwESNCLH3JI5hCUuj7squn-5WbXzEPPGEXj4kUY8FynpNVInRXv-SFDCDnEG4RscngAhHxxi-FMR0BvVMYt7vMMBF1xhdMKe6BPrvEwW~oQwbPfD3ISafzqd7qlHYI8CgC5sMgQ2EeydY5dNt3SrYvzBOkzKPpbDKrXnrntTWGaeSukNrA8oSaxopCE90zVVPP6ZJUEuhb9o77a0NB2rTGLtHA9J5ZoALFMFAcrabpVrGeiOqJNU3fbRD7rdpC7rEg7-m7vSTRcL5h4HeRXt0v3NbXtnt1KhubW6YN2d1vA__'),
    ];
  }

  @override
  Future<List<Procedure>> getRecipeProcedure({required int recipeId}) async {
    return const [
      Procedure(
          stepNum: 1,
          content:
              'In a large bowl, mix the ground chicken, finely chopped onion, minced garlic, chopped green chilies, red chili powder, paprika, cumin powder, coriander powder, salt, pepper, egg, breadcrumbs, and chopped fresh cilantro (if using) until well combined.'),
      Procedure(
          stepNum: 2,
          content:
              'Divide the chicken mixture into 4 equal portions and shape each portion into a patty.'),
      Procedure(
          stepNum: 3,
          content:
              'Heat 2 tablespoons of oil in a large skillet over medium heat. Cook the chicken patties for about 5-6 minutes on each side, or until they are fully cooked through and golden brown. Alternatively, you can grill the patties.'),
      Procedure(
          stepNum: 4,
          content:
              'In a small bowl, combine the mayonnaise, hot sauce, garlic powder, and lemon juice. Stir until the mixture is smooth and well combined.'),
      Procedure(
          stepNum: 5,
          content:
              'Lightly toast the burger buns on a skillet or grill until they are golden brown.'),
      Procedure(
          stepNum: 6,
          content:
              'Spread a generous amount of spicy mayo on the bottom half of each toasted bun.'),
      Procedure(
          stepNum: 7,
          content:
              'Place a lettuce leaf on the bottom bun, followed by a chicken patty. Add a slice of tomato, red onion, pickles (if using), and a slice of cheese (if using).'),
      Procedure(
          stepNum: 8,
          content:
              'Place the top half of the bun on the assembled burger. Serve the spicy chicken burgers immediately with your favorite sides like fries or a salad.'),
    ];
  }
}
