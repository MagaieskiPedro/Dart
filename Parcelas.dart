import 'dart:io';

void main(){
  print("Digite o valor total dos pagamentos: ");
  int total = int.parse(stdin.readLineSync()!);
  print("Digite o numero de parcelas: ");
  int parcelas = int.parse(stdin.readLineSync()!);

  double valorParcela = total/parcelas;
}