import 'package:flutter_via_cep/shared/models/cep_model.dart';
import 'package:flutter_via_cep/shared/repositories/cep_repository.dart';

class HomeController {
  List<CepModel> cepList = [];
  CepModel cepItem = CepModel.empty();
  final CepRepository _cepRepository;
  HomeController({required CepRepository cepRepository}) : _cepRepository = cepRepository;

  Future<void> searchCep(String cep) async {
    cepItem = await _cepRepository.searchCep(cep);
  }
}
