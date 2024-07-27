import 'package:food_recipe/domain/model/procedure.dart';

abstract interface class ProcedureRepository {
  Future<List<Procedure>> getRecipeProcedure({required int recipeId});
}
