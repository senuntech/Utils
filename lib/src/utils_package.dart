import 'package:intl/intl.dart';

abstract class Utils {
  static String formatDataBR({required String data}) {
    final DateTime now = DateTime.parse(data);
    final DateFormat formatter = DateFormat('dd/MM/yyyy');
    final String formatted = formatter.format(now);
    return formatted;
  }

  static String formatDataUSA({required String data}) {
    var inputFormat = DateFormat('dd/MM/yyyy');
    var date1 = inputFormat.parse(data);
    var outputFormat = DateFormat('yyyy-MM-dd');
    var date2 = outputFormat.format(date1);
    return date2;
  }

  static String formatMoedaRealBR({required double valor}) {
    return NumberFormat("#,##0.00", "pt_BR").format(
      valor,
    );
  }

  static double MoedaRealToDouble({required String valor}) {
    String v1 = valor.substring((valor.length - 3), (valor.length));
    String v2 = valor.substring(0, (valor.length - 3));
    v1 = v1.replaceAll(',', '.');
    v2 = v2.replaceAll('.', '');
    String valorFormatado = v2 += v1;
    return double.parse(valorFormatado);
  }

  static String removeCaracterEspecial({required String texto}) {
    return texto.replaceAll(RegExp(r'[^\w\s]+'), '');
  }

  static String removeAcentos({required String texto}) {
    List comAcentos = [
      "ç",
      "Ç",
      "á",
      "é",
      "í",
      "ó",
      "ú",
      "ý",
      "Á",
      "É",
      "Í",
      "Ó",
      "Ú",
      "Ý",
      "à",
      "è",
      "ì",
      "ò",
      "ù",
      "À",
      "È",
      "Ì",
      "Ò",
      "Ù",
      "ã",
      "õ",
      "ñ",
      "ä",
      "ë",
      "ï",
      "ö",
      "ü",
      "ÿ",
      "Ä",
      "Ë",
      "Ï",
      "Ö",
      "Ü",
      "Ã",
      "Õ",
      "Ñ",
      "â",
      "ê",
      "î",
      "ô",
      "û",
      "Â",
      "Ê",
      "Î",
      "Ô",
      "Û",
    ];
    List semAcentos = [
      "c",
      "C",
      "a",
      "e",
      "i",
      "o",
      "u",
      "y",
      "A",
      "E",
      "I",
      "O",
      "U",
      "Y",
      "a",
      "e",
      "i",
      "o",
      "u",
      "A",
      "E",
      "I",
      "O",
      "U",
      "a",
      "o",
      "n",
      "a",
      "e",
      "i",
      "o",
      "u",
      "y",
      "A",
      "E",
      "I",
      "O",
      "U",
      "A",
      "O",
      "N",
      "a",
      "e",
      "i",
      "o",
      "u",
      "A",
      "E",
      "I",
      "O",
      "U",
    ];

    String novoTexto = "";

    for (var i = 0; i < texto.length; i++) {
      if (comAcentos.contains(texto[i])) {
        novoTexto += texto[i].replaceAll(
          texto[i],
          semAcentos[comAcentos.indexOf(texto[i])],
        );
      } else {
        novoTexto += texto[i];
      }
    }

    return novoTexto;
  }
}
