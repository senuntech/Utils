import 'package:flutter_test/flutter_test.dart';

import 'package:utils/utils.dart';

void main() {
  test('Formatar data padrão BR', () {
    final utils = Utils.formatDataBR(data: "2021-11-19");

    expect(utils, "19/11/2021");
  });


  test('Formatar data padrão USA', () {
    final utils = Utils.formatDataUSA(data: "19/11/2021");

    expect(utils, "2021-11-19");
  });


  test('Formatar moeda Real', () {
    final utils = Utils.formatMoedaRealBR(valor: 1500.50);
    expect(utils, "1.500,50");
  });


  test('Formatar moeda Real para double', () {
    final utils = Utils.MoedaRealToDouble(valor: "1.500,50");
    expect(utils, 1500.50);
  });


  test('Remover caracteres especiais', () {
    final utils = Utils.removeCaracterEspecial(texto: "Hello, world! i am 'foo'");
    expect(utils, "Hello world i am foo");
  });

  test('Remover acentos', () {
    final utils = Utils.removeAcentos(texto: "âãáêéíôõóúû ç");
    expect(utils, "aaaeeiooouu c");
  });
}
