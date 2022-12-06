void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  var pessoasMasculino = [];
  var pessoasFeminino = [];
  var pessoasIdade = [];
  var pessoaMaisVelha = 0;
  var nomePessoaMaisVelha = '';

  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  var listaPessoas = pessoas.toSet().toList();

  //! Baseado na lista acima.
  for (var pessoa in listaPessoas) {
    final dadosPessoa = pessoa.split('|');
    final pessoaIdade = int.tryParse(dadosPessoa[1]);
    final pessoaNome = (dadosPessoa[0]);

    if (dadosPessoa[2].toLowerCase() == 'masculino') {
      pessoasMasculino.add(dadosPessoa[0]);
    } else {
      pessoasFeminino.add(dadosPessoa[0]);
    }

    if (int.tryParse(dadosPessoa[1])! > 18) {
      pessoasIdade.add(dadosPessoa[0]);
    }

    if (pessoaMaisVelha < pessoaIdade!) {
      pessoaMaisVelha = pessoaIdade;
      nomePessoaMaisVelha = pessoaNome;
    }
  }
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print(
      'Quantidade Sexo Masculino: ${pessoasMasculino.length} - Lista: $pessoasMasculino');
  print(
      'Quantidade Sexo Feminino: ${pessoasFeminino.length} - Lista: $pessoasFeminino');

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print('Maiores de 18 anos: $pessoasIdade');
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print('A pessoa mais velha da lista é: $nomePessoaMaisVelha');
}
