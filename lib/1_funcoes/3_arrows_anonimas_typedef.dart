void main() {
  // funcoes arrow
  // funcoes anonimas
  // typedef

  var nome = '';
  var idade = 1;
  funcaoQualquer() {
    print('chamou a funcao da variavel');
    return '2000';
  }

  print(funcaoQualquer());

  print(somaInteiros(10, 10));

  print('iniciando a chamada');
  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('nome veio vazio');
    } else {
      print(nome);
    }
  });
  print('finalizando chamada');
}

// funcoes tem 3 partes:
// 1 tipo de retorno
// 2 nome
// 3 parametros (normais, nomeados e opcionais)
int somaInteiros(int num1, int num2) => num1 + num2; // => funcoes arrow
void somaInteirosVoid(int num1, int num2) => num1 + num2;

void chamarUmaFuncaoDeUmParametro(funcaoQueRecebeNome funcaoQueRecebeONome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Francisco Sousa';
  print('finalizando a funcao -> chamarUmaFuncaoDeUmParametro');
  print('invocando funcao funcaoQueRecebeONome');
  funcaoQueRecebeONome(nomeCompleto);
}

typedef funcaoQueRecebeNome = void Function(String nome);
