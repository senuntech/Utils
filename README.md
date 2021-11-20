
# Utils Documentação

Formatar data padrão BR 

```
final utils = Utils.formatDataBR(data: "2021-11-19");   -> "19/11/2021"
```

Formatar data padrão USA

```
final utils = Utils.formatDataUSA(data: "19/11/2021"); -> "2021-11-19"
```

Formatar moeda Real

```
final utils = Utils.formatMoedaRealBR(valor: 1500.50); -> "1.500,50"
```

Formatar moeda Real para double

```
final utils = Utils.MoedaRealToDouble(valor: "1.500,50"); -> 1500.50
```

Remover caracteres especiais

```
final utils = Utils.removeCaracterEspecial(texto: "Hello, world! i am 'foo'"); -> Hello world i am foo
```

Remover acentos

```
final utils = Utils.removeAcentos(texto: "âãáêéíôõóúû ç"); -> "aaaeeiooouu c"
```






