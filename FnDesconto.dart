import 'dart:io';

void main() {
  stdout.write("Digite o preco de um produto: ");
  double? preco = double.parse(stdin.readLineSync()!);
  stdout.write("Digite, em porcentagem (sem o %), o desconto: ");
  double? desconto = double.parse(stdin.readLineSync()!);
  print("O preco com desconto é ${calcularDesconto(preco, desconto)}");
}

double calcularDesconto(double preco, double desconto) {
  desconto = desconto / 100;
  preco = preco - (preco * desconto);
  return preco;
}
