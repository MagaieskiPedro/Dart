import 'dart:io';

void main(){
  print("Digite a 1ª nota: ");
  int ? nota1 = int.parse(stdin.readLineSync()!) ;
  print("Digite a 2ª nota: ");
  int ? nota2 = int.parse(stdin.readLineSync()!);
  print("Digite a 3ª nota: ");
  int ? nota3 = int.parse(stdin.readLineSync()!);
  print("Digite a 4ª nota: ");
  int ? nota4 = int.parse(stdin.readLineSync()!);
  print("Digite a 5ª nota: ");
  int ? nota5 = int.parse(stdin.readLineSync()!);


  int ? soma = nota1 + nota2 + nota3 + nota4 + nota5;
  double ? media = soma/5;

  if(media >=5){
    print("Aluno Aprovado! A media foi: $media");
  }else if(media >= 4){
    print("Aluno em Recuperação! A media foi: $media");
  }else{
    print("Aluno em Reprovado! A media foi: $media");
  }

}