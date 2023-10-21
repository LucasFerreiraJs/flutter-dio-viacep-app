Map<String, dynamic> completeCepToMap(dynamic data) {
  return {
    'objectId': data['objectId'].toString(),
    'cep': data['cep'].toString(),
    'logradouro': data['logradouro'].toString(),
    'complemento': data['complemento'].toString(),
    'bairro': data['bairro'].toString(),
    'localidade': data['localidade'].toString(),
    'uf': data['uf'].toString(),
    'createdAt': data['createdAt'].toString(),
    'updatedAt': data['updatedAt'].toString()
  };
}

Map<String, dynamic> simpleCepToMap(dynamic data) {
  return {
    'cep': data['cep'] as String,
    'logradouro': data['logradouro'] as String?,
    'complemento': data['complemento'] as String?,
    'bairro': data['bairro'] as String?,
    'localidade': data['localidade'] as String,
    'uf': data['uf'] as String
  };
}
