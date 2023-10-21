import 'package:flutter_via_cep/shared/models/cep_model.dart';
import 'package:flutter_via_cep/shared/services/cep_service.dart';

class CepRepository {
  final CepService cepService;
  CepRepository({required this.cepService});

  Future<CepModel> searchCep(String cep) async {
    final getCep = await cepService.getByCep(cep);
    return CepModel.fromJson(getCep);
  }
}
