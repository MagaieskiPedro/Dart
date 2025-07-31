import 'dart:io';

void main(){
  print("Digite o nome do motorista: ");
  String ? nome = stdin.readLineSync();
  print("Digite a velocidade que o motorista estava: ");
  int ? velocidade = int.parse(stdin.readLineSync()!);

  double multa = 0;

  if(velocidade <= 60){
    print("Sem infração");
  }else if(velocidade >60 && velocidade<=80){
    print("Infração leve");
    multa = 88;
  }else if(velocidade >80 && velocidade <=100){
    print("Infração média");
    multa = 130;
  }else{
    print("Infração grave! ");
    multa = 185;
  }
  if(multa > 0){
      print("1- Pagar à vista (10% de desconto)");
      print("2- Parcelar em 2x (sem juros)");
      print("3- Parcelar em 3x (10% de juros)");
      int opcao = int.parse(stdin.readLineSync()!);

      switch(opcao){
        case 1:
          multa = multa - (multa*0.1);
          print("Voce pagara $multa a vista");
        case 2:
          print("Voce pagara $multa em 2x");
        case 3:
          multa = multa + (multa*0.1);
          print("Voce pagara $multa em 3x");
        default:
          print("Opção incorreta");
      }
  }


}