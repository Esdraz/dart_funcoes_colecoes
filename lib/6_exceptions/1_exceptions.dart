void main() {
  var idade = '31';
  String? nome;

  try {
    print('inicio');
    var idadeParse = int.parse(idade);
    // nome!.toLowerCase();

    if (idadeParse == 31) {
      throw Exception();
    }
    print('fim');

    // catch(e, s) - 's' stacktrace
  } on FormatException catch (e, s) {
    // print(e);
    print(s);
    // print('Erro ao converter idade');
  } on TypeError {
    print('Erro ao converter idade');
  } on Exception {
    print('Erro idade == 31');
  } catch (e) {
    print('Erro ao executar programa');
  } finally {
    print('Finally');
  }
}
