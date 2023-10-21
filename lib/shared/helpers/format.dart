String formatCep(String cep) {
  try {
    var init = cep.substring(0, 5);
    var end = cep.substring(5);
    var newCepFormatted = '$init-$end';

    return newCepFormatted;
  } on RangeError {
    throw const FormatException('Verifique cep informado');
  }
}
