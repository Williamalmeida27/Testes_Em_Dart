import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  // print("Informe o saldo atual: ");
  // double saldoAtual = double.parse(stdin.readLineSync(encoding: utf8)!);
  // print("Informe o valor de deposito: ");
  // double valorDeposito = double.parse(stdin.readLineSync(encoding: utf8)!);
  // print("Informe o valor de retirada: ");
  // double valorRetirada = double.parse(stdin.readLineSync(encoding: utf8)!);

  // //TODO criar uma função que chame as demais e nela ocorra as operações.

  // double saque(double valorSaque) {
  //   if (valorSaque <= saldoAtual) {
  //     return saldoAtual = saldoAtual - valorSaque;
  //   } else {
  //     print("Valor de saque inferior ao saldo: ");
  //     return saldoAtual.floorToDouble();
  //   }
  // }

  // double deposito(double valorDepositado) {
  //   if (valorDepositado > 0) {
  //     return saldoAtual = saldoAtual + valorDepositado;
  //   } else {
  //     print("O valor de deposito não pode ser zero");
  //     return saldoAtual;
  //   }
  // }

  // deposito(valorDeposito);
  // saque(valorRetirada);

  // print(saldoAtual);

  //Entrada dos tipos de ativos
  var quantidadeAtivos = int.parse(stdin.readLineSync(encoding: utf8)!);

  List<String> ativos = [];

  // Entrada dos códigos dos ativos
  for (var i = 0; i < quantidadeAtivos; i++) {
    var codigoAtivo = stdin.readLineSync(encoding: utf8)!;
    ativos.add(codigoAtivo);
  }

  //TODO: Ordenar os ativos em ordem alfabética.
  ativos.sort();

  //TODO: Imprimir a lista de ativos ordenada, conforme a tabela de exemplos.
  for (var ativo in ativos) {
    print(ativo);
  }
}
