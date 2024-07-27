import 'package:food_recipe/data/data_source/recipe/recipe_api.dart';
import 'package:food_recipe/domain/model/procedure.dart';
import 'package:food_recipe/domain/repository/procedure_repository.dart';

class ProcedureRepositoryImpl implements ProcedureRepository {
  final RecipeApi _recipeApi;

  ProcedureRepositoryImpl({required RecipeApi recipeApi})
      : _recipeApi = recipeApi;

  @override
  Future<List<Procedure>> getRecipeProcedure({required int recipeId}) async {
    try {
      final data = await _recipeApi.getRecipeProcedure(recipeId: recipeId);
      return data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
