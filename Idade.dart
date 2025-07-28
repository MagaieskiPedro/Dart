import 'dart:io';

void main(){
  print("Digite a sua idade: ");
  String ? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!);

  if(idade >= 18){
    print("Você pode dirigir campeão");
  }else{
    print("Você não pode dirigir campeão");
  }
}