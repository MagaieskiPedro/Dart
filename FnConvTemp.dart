import 'dart:io';

void main() {
  stdout.write("Digite a temperatura em celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);
  print("A temperatura em fahrenheit é: ${celciusParaFahrenheit(celsius)}");
}

double celciusParaFahrenheit(double celsius) {
  double fahrenheit = (celsius * 9 / 5) + 32;
  return fahrenheit;
}
