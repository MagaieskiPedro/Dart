import 'dart:io';

void main(){
  List<String> frutas = [];
  for(int i=0;i<3;i++){
    print("Digite sua fruta favorita");
    String ? resposta = stdin.readLineSync();
    frutas.add(resposta!);
  }
  print(frutas);
}