import 'package:busca_cep/features/data/models/cep_model.dart';

abstract class SearchCepDatasource {
  Future<CepModel> call(String cep);
}
