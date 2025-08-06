import 'dart:io';

void main(){
    print('Digite o valor da sua compra: ');
    int valor = int.parse(stdin.readLineSync()!);
    print('Digite a quantidade de parcelas: ')
    int parcelas = int.parse(stdin.readLineSync()!);

    double valorParcela = double.parse(valor)/parcelas;

    for(int i=0;i<parcelas;i++){
        print("Parcela $i: R\$ $valorParcela");
    }

}