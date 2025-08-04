import 'dart:io';

void main(){
  List<String> items = [];
  double valorTotal = 0;
  String ? repetir = "sim";
        print("Digite o seu cpf");
        int cpf = int.parse(stdin.readLineSync()!);
  do{
      print("Os itens disponiveis são $items");
      print("Digite o nome do item: ");
      String nome = stdin.readLineSync()!;
      items.add(nome);
      print("Digite o valor do item: ");
      double valor = double.parse(stdin.readLineSync()!);
      valorTotal += valor;
      print("Deseja incluir mais itens? sim ou não: ");
      repetir = stdin.readLineSync()!;
      repetir.toLowerCase();
  }while(repetir == "sim");

  print("Os itens comprados foram $items pelo valor total de: $valorTotal");
  int escolha = 0;
  do{
      print("Escolha a forma de pagamento: 1-A vista(10% de desconto) 2-parcelado no cartão(10% juros) 3-fiado(15% a mais na proxima compra) ");
      escolha = int.parse(stdin.readLineSync()!);
    switch(escolha){
      case 1:
        double desconto = valorTotal - (valorTotal*0.1);
        print("Você escolheu pagar o valor $valorTotal a vista por $desconto com o desconto");
        break;
      case 2:
        double juros = valorTotal + (valorTotal*0.1);
        print("Voce escolheu pagar o valor $valorTotal com juros por $juros com o juros acrescentados");
        break;
      case 3:
        print("Voce escolheu pagar o valor $valorTotal no fiado, sua proxima conta terá um acrescimo de 15% do valor");
        break;
      default:
        print("Voce não escolheu, digite um valor valido!");
    }
  }while(escolha != 1 && escolha != 2 && escolha != 3);



}