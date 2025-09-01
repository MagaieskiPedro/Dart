import 'dart:io';

class Animal{
  String nome;
  int idade;
  Animal({required this.nome, required this.idade});
}

class Cachorro extends Animal{
  String ? raca;

  Cachorro({required nome, required idade, this.raca}):super(nome:nome,idade:idade);
  void fazerSom(){
    print("AuAu");
  }
}

class Gato extends Animal{
  String ? cor;
  Gato({required nome, required idade, this.cor}):super(nome:nome,idade:idade);
  void fazerSom(){
    print("Miau");
  }
}

void main(){
  Cachorro pincher = Cachorro(nome: "Thor", idade: 3, raca: "pincher");

  Gato persa = Gato(nome: "Almondega", idade: 8, cor: "laranja");

  pincher.fazerSom();
  persa.fazerSom();
}
