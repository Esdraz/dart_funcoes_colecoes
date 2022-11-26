void main() {
  var lista = ['Francisco'];

  // print(lista.hashCode);
  // print(lista);
  // funcao(lista);
  // print(lista);

  // var nome = 'Francisco Sousa';
  // print(nome);
  // print(nome.hashCode);
  // funcao2(nome);
  // print(nome);
  // print(nome.hashCode);

  var list = ['Francisco'];

  print(list);
  add(list);
  print(list);
}

void funcao2(String nome) {
  nome += ' teste fun2';
  print(nome);
  print(nome.hashCode);
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  if (nomes.isNotEmpty) {
    nomes.clear();
  }
}

// forma correta - duplicar a lista  var novoNomes = [...nomes];
List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Sousa Santos');
  print(novoNomes);
  return novoNomes;
}
