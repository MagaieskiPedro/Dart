import 'dart:io';

void main() {
  stdout.write("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);
  if (ehMaiorIdade(idade)) {
    stdout.write("É maior de idade! ");
  } else {
    stdout.write("É menor de idade!");
  }
}

bool ehMaiorIdade(int idade) {
  if (idade >= 18) {
    return true;
  } else {
    return false;
  }
}
