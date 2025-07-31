import 'dart:io';

void main(){
  print("Olá, digite o seu nome campeão: ");
  String ? nome = stdin.readLineSync();
  print("Digite o seu antepenultimo salario: ");
  int ? salario3 = int.parse(stdin.readLineSync()!);
  print("Digite o seu penultimo salario: ");
  int ? salario2 = int.parse(stdin.readLineSync()!);
  print("Digite o seu ultimo salario: ");
  int ? salario1 = int.parse(stdin.readLineSync()!);

  int ? soma = salario1 + salario2 + salario3;
  double ? media = soma/3;
  if(salario3 <0 || salario2 <0 || salario1 <0){
    print("Salarios incorretos pois não pode ter salario negativo, insira um valor válido");
  }else{
    print("Sua média salarial é $media");
    if(media <=1518){
      print("$nome possui uma média salarial menor que um salario mínimo(R\$1518)");
    }else if(media <= 3225){
      print("$nome possui uma média salarial menor que a média do Brasil(R\$3325)");
    }else{
      print("$nome possui uma média salarial maior que a média do Brasil(R\$3325)!");
    }
  }



}