import 'dart:io';

void main(){
  String ? nome;
  while(nome == null || nome!.trim().isEmpty){
    print("Nome não preenchido");
    try{
      print("Digite seu nome completo: ");
      nome = stdin.readLineSync();
      if(nome!.trim().isEmpty){
        print("Entrada vazia");
      }
    }catch(e){
      print("Entrada invalida! erro: ${e}");
    }
  }
}