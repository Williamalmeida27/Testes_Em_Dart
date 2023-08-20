double calcularDesconto(double valor, double desconto, bool porcentagem) {
  //Testando se o valor for igual o menor que zero, ele lança um erro
  if (valor <= 0) {
    throw ArgumentError("Valor inválido");
  }
  if (desconto <= 0) {
    //Testando também se o desconto for menor que zero, ele também deve lança um erro.
    throw ArgumentError("Desconto abaixo de zero não é permitido!");
  }
  if (porcentagem) {
    return valor - ((valor * desconto) / 100);
  }
  return valor - desconto;
}
