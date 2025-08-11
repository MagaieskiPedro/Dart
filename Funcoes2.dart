import 'dart:io';

void main() {
  double valorDivisao = divisao(50, 10);
  print("Este é o valor da divisao $valorDivisao");
}

// retorno com parametros
double divisao(double a, double b) {
  double soma = a + b;
  print("Esta é a soma: $soma");

  double divisao = a / b;
  return divisao;
}

// sem retorno com parametros
void divisao2(double a, double b) {
  print("Divisão: ${a / b}");
}
