void main() {
  // o mapa é uma representacao de chave:valor
  final paciente = <String, String>{
    'nome': 'Francisco Sousa',
    'curso': 'Academia do Flutter'
  };

  // o mapa pode ser nulo mas se for criado deve conter a chave e o valor
  // nao nulos
  Map<String, String>? pacienteNullSafety;

  // o mapa e o valor nao podem ser nulos mas a chave pode ser nula
  var pacienteNullSafety2 = <String?, String>{null: 'Francisco'};

  // o mapa e a chave nao podem ser nulos mas o valor pode ser nulo
  var pacienteNullSafety3 = <String, String?>{'nome': null};

  var produtos = <String, String>{};
  // so sera adicionado se a chave nao existir
  produtos.putIfAbsent('nome', () => 'Notebook');
  produtos.putIfAbsent('nome', () => 'Desktop');
  print(produtos);

  produtos.update('nome', (value) => 'camera');
  print(produtos);
  produtos.update(
    'preco',
    (value) => '10',
    ifAbsent: () => '10',
  );

  // recuperando o valor
  print('Produto: ${produtos['nome']}');
  print('Preco: ${produtos['preco']}');

  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });

  // fazer processo asyncrono dentro dele
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key}: ${entry.value}');
  }

  for (var key in produtos.keys) {
    print('Chaves: $key');
  }

  for (var value in produtos.values) {
    print('Valores: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry('${key}_nova', value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Francisco Sousa',
    'cursos': [
      {'nome': 'Academia do Flutter', 'descricao': 'Melhor curso de flutter.'},
      {
        'nome': 'Arquiteto flutter',
        'descricao': 'Melhor curso pra arquiteto em flutter'
      }
    ]
  };
  print(mapa);
}
