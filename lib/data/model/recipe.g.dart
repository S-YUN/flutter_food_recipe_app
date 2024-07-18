// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      chef: json['chef'] as String,
      rating: (json['rating'] as num).toDouble(),
      cookingTime: (json['cookingTime'] as num).toInt(),
      isFavorite: json['isFavorite'] as bool,
      imgUrl: json['imgUrl'] as String,
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'chef': instance.chef,
      'rating': instance.rating,
      'cookingTime': instance.cookingTime,
      'isFavorite': instance.isFavorite,
      'imgUrl': instance.imgUrl,
    };
