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
                  'https://s3-alpha-sig.figma.com/img/9b37/65ef/6e15f500f33fd641033e430dabb8ea4e?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pXkljGk~XLm~b11f5VJWhuY-l07F1sfMNutrsn1Tw1Xyz4ntrscTUC-rYslAxdAw1oUVNoau8eA8DoXhAJWiUCeuj0EFd0ki~pqMlV18MUuVdY7flILfhV8PpbduJXc-dgn9rhW2AZUdNFRpEyYcK9hKneK9HKdZUul~jbHdkFUcI~K5uOqoZlUb34TjqtjIDpw3aTFfanvQCSf9qEkgOnlIZayK1f5f0RSk8xRCv6H2ePFgjs8j9wqastUAf5uiNcWKQCbA5e5MijvvWPzL5SpqG0LR53MKn9jBVM-K-AkfXiB-mhZEtJWcx2MV2mhDn5z94LVjihFQVAejx3hukg__',
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
              imageUrl:
                  'https://s3-alpha-sig.figma.com/img/91cb/ea1b/8c2bf1dcc10343ddfb2c58169df03428?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fuX594h0EQidHeBCB7P8uOmuRAo24oFM8bDTjWDado15cUntLs8ymsQ0hfCZWF6guQu3hxch7B-a7pDzE8tWKLRTCNS5Ri-vFZmgrejQ8ckoQdX50xgXLvESq7pAqnBaFkPPfiCEjJnRPSIHPySPQpqdQfwHkXCg9yTS8BLe0PQykjfRFfqED1hcUuV68UOW9wgF5X3hq-p0LTfdQDzEL0YDIhH1jUh~jM1cJErjrWKwKuCZNhwjU1GZ45Hx5VeeZtzxypMO8MNvhIusTylBVC14k52n~sf7vR1jUMLNBMeq4IG2aaxVEfa2bqj8u6ugv7NMuC-fEb7sSJiyP5R-JQ__',
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
              imageUrl:
                  'https://s3-alpha-sig.figma.com/img/47d3/49d1/dc3c17eb2ae7f6787790531120985eeb?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mhS1zcUKLeHkzFUAx8w5sBQ5KAWNOvHccUjlBhs6~FzmBg0WQ8Ud-tH9-iKbNsdrfHIv4tZyXvUilBmin7bUDUYKWOSVQb5PRUQXf17fBSmu7srh9HzM75g7Lc6VzDPjg5YPQoQ9~u5lClSD4RN9MagH2NNlyYJMDoZ9X9pIf1NiL2pdSoFVTmym2jZJS9TRAfSfgEXiA6zlib6ZAKPiR2r--RbWawBDZ14uv-yNa8oFyJWndrquO-EOpd7tt9luIzR0OaPzuzQ11z8Fs-yop7F0Psj6J4gUxcQalzK8TUWrfDtI0BhKh2k~NDileMq~u1rtzG0Z82BNbVz-09YC~w__',
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
              imageUrl:
                  'https://s3-alpha-sig.figma.com/img/859f/91ca/5a0dfeadde542448ccf736cfad6c8318?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bKZKUh7kuaSmADMVTfYEBz5ooug5VWkm9zE9ZGC6jU5WWuMOlXjiwDiMK969F6U19SkV0TSZBDb4~nZpVFqUPE7LWLGzl7HM9EwmN~rQUXiqVC1t0pdxtI-g7ZHsYwmjZF~Ox68ojjnaaivIzTqcyW-df7CBGYt3L5aDD~148VCmwH1LsDeSmiRe2QlWBm2aMBqae0Cgpu-CHa6SuBZShwHVYUWtX~8ia1zEQMg3~IITSn~kql6ofWwawGLVTN~bc7gksxv~iqQWr9gS8wMXwLKtThXHqedZiNHlnZbpcN~qqJubrinzC0aq~6ustKDn2V9ic6p8uE13VyGD0f2wNw__',
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
              imageUrl:
                  'https://s3-alpha-sig.figma.com/img/9b37/65ef/6e15f500f33fd641033e430dabb8ea4e?Expires=1722816000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pXkljGk~XLm~b11f5VJWhuY-l07F1sfMNutrsn1Tw1Xyz4ntrscTUC-rYslAxdAw1oUVNoau8eA8DoXhAJWiUCeuj0EFd0ki~pqMlV18MUuVdY7flILfhV8PpbduJXc-dgn9rhW2AZUdNFRpEyYcK9hKneK9HKdZUul~jbHdkFUcI~K5uOqoZlUb34TjqtjIDpw3aTFfanvQCSf9qEkgOnlIZayK1f5f0RSk8xRCv6H2ePFgjs8j9wqastUAf5uiNcWKQCbA5e5MijvvWPzL5SpqG0LR53MKn9jBVM-K-AkfXiB-mhZEtJWcx2MV2mhDn5z94LVjihFQVAejx3hukg__',
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
