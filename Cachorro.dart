import 'dart:io';

class Cachorro {
  int idade = 0;
  String raca = "";
  String nome = "";
  String cor = "";

  Cachorro(this.idade,this.raca,this.nome,this.cor);

  void latir(){
    print("AUAU");
  }
}

void main(){
  Cachorro spike = Cachorro(10, "Beagle", "Spike", "Castanho");
}