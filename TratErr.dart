import 'dart:io';

void main() {
  // PADRÃO COM WHILE(FEIO)
  // print("Digite alguma coisa: ");
  // String? entrada = stdin.readLineSync();

  // while (entrada == null || entrada.trim().isEmpty) {
  //   //trim tira os espaços e tabs para verificar se é vazio
  //   print("Entrada nula ou vazia, digite novamente o valor: ");
  //   String? entrada = stdin.readLineSync();
  // }

  // PADRÃO COM TRY, ON (PEGA ERRO ESPECIFICO), CATCH (PEGA TODOS OS ERROS)
  try {
    print("Digite sua idade");
    int idade = int.parse(stdin.readLineSync()!);
  }
  // on FormatException {
  //   print("Formato incorreto! ");
  // }
  catch (e) {
    print("Seu erro é $e");
  } finally {
    // Vai executar SEMPRE após as tratativas anteriores
    print("Encerrando Programa!");
  }
}
