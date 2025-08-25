import 'dart:io';

class Produto{
  String ? nome = null;
  double ? preco = null;
  int estoque = 10;

  Produto(this.nome,this.preco);

  void subtarairEstoque(){
    print("Estoque era: ${this.estoque}");
    this.estoque -= 1;
    print("Estoque agora é: ${this.estoque}");
  }
}

void main(){
  Produto motor = Produto("V4", 25000);
  motor.subtarairEstoque();
}