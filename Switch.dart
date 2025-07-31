import 'dart:io';

void main(){
  print("1: Arroz ");
  print("2: Feijão ");
  print("3: Mortadela");
  int ? entrada = int.parse(stdin.readLineSync()!);

  switch(entrada){
    case 1: 
      print("Arroz adicionado na sua sacola");
      break;
    case 2: 
      print("Feijão adicionado na sua sacola");  
      break;
    case 3: 
      print("Mortadela adicionado na sua sacola");
      break;
    default:
      print("Valor incorreto, digite novamente!");
      break;
  }

}