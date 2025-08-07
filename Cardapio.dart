import 'dart:io';

void main(){
    List<String> cardapio = ["Hambúrguer - R\$12.00",
    "Batata Frita - R\$8.00",
    "Refrigerante - R\$5.00",
    "Suco - R\$6.00",
    "Milkshake - R\$10.00"];
    for(int i =0; i<5;i++){
        print("${i+1} - ${cardapio[i]}");
    }
}