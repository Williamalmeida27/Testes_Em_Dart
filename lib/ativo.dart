import 'dart:io';

void main(List<String> args) {
  //Entrada dos tipos de ativos
  var quantidadeAtivos = int.parse(stdin.readLineSync()!);

  List<String> ativos = [];

  // Entrada dos códigos dos ativos
  for (var i = 0; i < quantidadeAtivos; i++) {
    var codigoAtivo = stdin.readLineSync()!;
    ativos.add(codigoAtivo);
  }

  //TODO: Ordenar os ativos em ordem alfabética.

  //TODO: Imprimir a lista de ativos ordenada, conforme a tabela de exemplos.
}
