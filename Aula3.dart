import 'dart:io';

void main(){
  int number = 0;

  do{
    print("Lojinha do vini");
    print("1 - Compre arroz");
    print("2 - Compre feijao");
    print("3 - Compre farofa");
    
    print("Digite um numero acima de 1 se quer encerrar");
    number = int.parse(stdin.readLineSync()!);
    
  }while(number >1);

  int contador = 0;
  while (contador < 5){
    print("Contador: $contador");
    contador++;
  }
}