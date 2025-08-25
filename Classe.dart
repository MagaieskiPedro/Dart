import 'dart:io';

class Humano{
  int idade=0;
  String nome ="";
  String ? cabelo="";
  double altura=0;

  Humano(this.idade,this.nome,this.cabelo,this.altura);
}

class Carro{
  String modelo = "";
  String cor = "";
  int ano = 0;
  String marca = "";
  double velocidade = 0; 

  Carro(this.modelo,this.cor,this.ano,this.marca);

  void acelerar(){
    this.velocidade += 10;
    print("A velocidade agora é ${velocidade}");
  }
}
void main(){
  Humano vini = Humano(20,"vini","liso",1.7);
  Carro civic = Carro("G10","azul",2015,"honda");

  civic.acelerar();

  // Humano carlos = Humano();
  // carlos.idade= 50;
  // carlos.altura= 1.5;
  // carlos.nome= "carlos";
  // carlos.cabelo = null;

}

