import 'package:food_recipe/data/model/procedure.dart';

abstract interface class ProcedureRepository {
  Future<List<Procedure>> getRecipeProcedure({required int recipeId});
}
