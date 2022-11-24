void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  // expand
  // array bidimencional
  var lista = [
    [1, 2],
    [3, 4],
  ];

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // any
  print('.any:');
  final listaBusca = ['Francisco', 'Jose', 'Pedro'];

  if (listaBusca.any((nome) => nome == 'Jose')) {
    print('tem Jose');
  } else {
    print('não tem Jose');
  }

  // every
  print('.every:');
  final listaBusca2 = ['Francisco', 'Jose', 'Pedro'];

  if (listaBusca2.every((nome) => nome.contains('o'))) {
    print('Todos os nomes tem a letar o');
  } else {
    print('Nem todos os nomes tem a letra o');
  }

  // sort
  print('.sort:');
  var listaParaOrdenacao = [99, 22, 10, 765, 1, 2, 3, 100, 300];
  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomeOrdenacao = ['Jose', 'Pedro', 'Arthur', 'Maria'];
  listaNomeOrdenacao.sort();
  print(listaNomeOrdenacao);

  var listaPacientes = [
    'Pedro Santos|37',
    'Luana Silva|30',
    'Guilherme Paiva|5',
    'Claudia Raia|60',
    'Antonio Sousa|5'
  ];

  var novaListaPacientes = [...listaPacientes];

  novaListaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print('lista original');
  print(listaPacientes);

  print('lista ordenada');
  print(novaListaPacientes);

  // compareTo
  print('sort com .compareTo:');
  var listaPacientes2 = [
    'Pedro Santos|37',
    'Luana Silva|30',
    'Guilherme Paiva|5',
    'Claudia Raia|60',
    'Antonio Sousa|5'
  ];

  listaPacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);

  // pacientes por funcao
  var listaPacientes3 = [
    'Pedro Santos|37',
    'Luana Silva|30',
    'Guilherme Paiva|5',
    'Claudia Raia|60',
    'Antonio Sousa|5'
  ];

  print('listaPacientes3:');
  print('antes:');
  print(listaPacientes3);
  print('funcao:');
  funcaoQualquer(listaPacientes3);
  print('depois:');
  print(listaPacientes3);
}

void printAcademia(int valor) {
  print(valor);
}

void funcaoQualquer(List<String> pacientes) {
  final localPacientes = [...pacientes]; //forma correta ordenar funcao

  localPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(localPacientes);
}
