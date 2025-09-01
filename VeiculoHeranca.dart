import 'dart:io';

class Veiculos{
  String cor;
  String modelo;
  String marca;
  int ano;
  double preco;
  String placa;

  Veiculos({required this.cor,required this.modelo, required this.marca, required this.ano, required this.preco, required this.placa});

}

class Carrinhos extends Veiculos{ // Para criar uma classe filha, use o extends
  Carrinhos({required String cor, required String modelo, required String marca, required int ano, required double preco, required String placa})
  :super(cor:cor, modelo: modelo, marca: marca, ano: ano, preco: preco, placa: placa);
}

class Motos extends Veiculos{
  Motos({required String cor, required String modelo, required String marca, required int ano,required double preco, required String placa})
  :super(cor:cor, modelo: modelo, marca: marca, ano: ano, preco: preco, placa: placa);
}

class Caminhao extends Veiculos{
  Caminhao({required String cor, required String modelo, required String marca, required int ano,required double preco, required String placa})
  :super(cor:cor, modelo: modelo, marca: marca, ano: ano, preco: preco, placa: placa);
}

void main(){
  Carrinhos uno = Carrinhos(cor: "Vermelho", modelo: "Uno de firma", marca: "Fiat", ano: 2010, preco: 4000, placa: "333AAA");
  Motos biz = Motos(cor: "Azul", modelo: "Biz 500", marca: "Honda", ano: 2007, preco: 3000, placa: "444BBB");
}