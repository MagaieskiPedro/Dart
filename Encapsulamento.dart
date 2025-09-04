import 'dart:io';

class Veiculos {
  String modelo;
  String marca;
  Veiculos({required this.modelo, required this.marca});

  void mover(bool cnh){
    if(cnh){

    }else{
      print("Não pode dirigir menó");
    }
  }
}

class Carro extends Veiculos{

  Carro({required String modelo, required String marca}):super(marca:marca,modelo: modelo);
  @override
  void mover(bool cnh){
    if(cnh){
      print("Vira a chave - partida");
      print("Colocar cinto");
      print("Pisa na embreagem");
    }
  }
}