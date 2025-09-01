import 'dart:io';

class Animal {
  String nome;
  int idade;

  Animal({required this.nome, required this.idade});
  
  void fazerSom(){
    print("Som");
  }

}

class Cachorro extends Animal {
  Cachorro({required String nome, required int idade}):super(nome: nome, idade: idade);
  @override
  void fazerSom(){
    print("AuAu $nome")
  }

}

void main(){
  Cachorro spike = Cachorro(nome: "Spikito", idade: 5);
  spike.fazerSom();
}