import 'package:my_app_testes/my_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcular valor do produto com desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  test('Calcular valor do produto com desconto com porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), 850);
  });

  test(
      'Calcular valor do produto com desconto com porcentagem passando valor zerado do produto',
      () {
    expect(() => app.calcularDesconto(0, 15, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test(
      'Calcular valor do produto com desconto com porcentagem passando desconto menor que zero',
      () {
    expect(() => app.calcularDesconto(150, 0, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  //Usando grupo de teste para simplificar os teste acima,

  group('Calcular valor do produto com e sem desconto', () {
    var valoresTeste = {
      //Criado uma variavel que recebe um map contendo uma chave que também é um map, e um  valor que é o retorno esperado
      {'valor': 1000, 'desconto': 150, 'percentual': false}: 850,
      {'valor': 1000, 'desconto': 15, 'percentual': true}: 850,
    };
    valoresTeste.forEach((valores, expected) {
      //Criando uma interação para que consigamos percorrer o map e usa-lo futuramente as chaves dentro do map.
      test('Entrada: $valores Esperado: $expected', () {
        expect(
            app.calcularDesconto(
                double.parse(valores['valor'].toString()),
                double.parse(valores['desconto'].toString()),
                valores['percentual'] == true),
            equals(expected));
      });
    });
  });

  group('Calcular valor do produto com valores e desconto zerado', () {
    var valoresTeste = {
      //Criado uma variavel que recebe um map contendo uma chave que também é um map, e um  valor que é o retorno esperado
      {'valor': 0, 'desconto': 150, 'percentual': false},
      {'valor': 1000, 'desconto': 0, 'percentual': true},
    };
    for (var valores in valoresTeste) {
      //Criando uma interação para que consigamos percorrer o map e usa-lo futuramente as chaves dentro do map.
      test('Entrada: $valores', () {
        expect(
            () => app.calcularDesconto(
                double.parse(valores['valor'].toString()),
                double.parse(valores['desconto'].toString()),
                valores['percentual'] == true),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    }
  });
}
