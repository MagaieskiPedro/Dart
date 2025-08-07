import 'dart:io';

void main(){
    mostrar();
    String valor = nome("nome");
    print(valor);
    menu();
    soma(10,20);
}

void mostrar(){
    print("Olá seu nome é vinicius");
}

String nome(String nome){
    return  "Olá $nome";
}

void menu(){
    print("Bem vindo ao mercado do vini");
    print("1 - Para comprar Arroz");
    print("2 - Para comprar Feijao");
    print("3 - Para comprar carne de tatu");
}

void soma(int a, int b){
    int valor = a+b;
    print(valor);
}
