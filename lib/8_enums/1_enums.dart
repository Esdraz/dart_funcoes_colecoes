void main() {
  // const cor = 'vermelho';
  var cor = Cores.vermelho;

  if (cor == Cores.vermelho) {}

  // transformando a string azul em um enum Cores.azul
  // antes na versao 2.15
  var azul = 'azul';
  var corAzul = Cores.values.where((cor) => cor.toString() == 'Cores.$azul');
  print(corAzul);

  //2.15+
  print(Cores.azul.name);
  var corAzulNovaVersao = Cores.values.byName(azul);
  print(corAzulNovaVersao);

  var coresMap = Cores.values.asMap();
  print(coresMap);

  var coresNameMap = Cores.values.asNameMap();
  print(coresNameMap);

  var corAzulPeloMap = coresNameMap[azul];
  print(corAzulPeloMap);

  // Cores.values.byName('branco'); //gera uma excessao
  // utilizando o map gera um retorno null
  var corBranco = coresNameMap['branco'];
  print(corBranco);
}

enum Cores { azul, vermelho, laranja, verde, preto }
