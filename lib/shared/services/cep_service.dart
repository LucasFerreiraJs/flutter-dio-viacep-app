import 'package:dio/dio.dart';
import 'package:flutter_via_cep/shared/helpers/convert_to_map.dart';

class CepService {
  final dio = Dio();

  Future<Map<String, dynamic>> getByCep(String cep) async {
    final result = await dio.get('https://viacep.com.br/ws/$cep/json/');

    if (result.statusCode != 200) {
      throw Exception('cep não encontrado');
    }

    return simpleCepToMap(result.data);
  }
}
