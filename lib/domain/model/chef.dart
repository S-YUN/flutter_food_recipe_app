import 'package:freezed_annotation/freezed_annotation.dart';

part 'chef.freezed.dart';
part 'chef.g.dart';

@freezed
class Chef with _$Chef {
  const factory Chef(
      {required String name,
      required String location,
      required String imageUrl,
      required int recipeCount,
      required int followers,
      required int following,
      required String introduce}) = _Chef;

  factory Chef.fromJson(Map<String, Object?> json) => _$ChefFromJson(json);
}
