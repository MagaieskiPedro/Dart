import 'dart:io';

class Produtos {
  //Atributos obrigatorios
  String nome;
  double preco;
  
  //Atributo opcional
  String ? descricao;

  // {} para classificar os atributos em obrigatorios ou opcionais
  Produtos({required this.nome, required this.preco, this.descricao});
}

void main(){
  Produtos Coca = Produtos(nome: "Coquinha Gelada", preco: 12);
  Produtos Pepsi = Produtos(nome: "Pesi gelada", preco: 12, descricao: "Pepsi é melhor que coca");

  print("${Pepsi.nome}");
  print("${Coca.nome}");
}