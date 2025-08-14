import 'dart:io';

void main(){
    // Inicializa como null, não preenche até acertar o formato
    int ? numero;
    while(numero == null){
        try{
            print("Digite o valor da sua compra: ");
            numero = int.parse(stdin.readLineSync()!);
            if(numero <=0){
                print("Digite um valor acima de 0");
                numero = null;
                throw FormatException();
            }
        }on FormatException{
            print("Formato incorreto! Digite um valor valido");
        }
    }
    
    int ? opcao;
    while(opcao == null){
        try{
            menu();
            opcao = int.parse(stdin.readLineSync()!);
            if(opcao !=1 && opcao !=2 && opcao !=3 && opcao !=4){
                print("Opcao invalida! selecione um numero de 1 a 4");
                opcao = null;
                throw FormatException();
            }
        }on FormatException{
            print("Valor invalido!");
        }
       
    }
     


}

void menu(){
    print("Escolha uma forma de pagamento: ");
    print("1-Dinheiro");
    print("2-Cartao de débito");
    print("3-Cartao de Crédito");
    print("4-Pix");
}