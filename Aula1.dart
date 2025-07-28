import 'dart:io'; // Biblioteca para input/output

// Função principal para executar o programa
void main(){
  print("Digite o seu nome: "); // Exibe mensagem na tela
  String ? nome = stdin.readLineSync(); // Input de uma string que pode receber nulo em uma variavel nome
  print("Olá $nome"); // Exibe mensagem com variavel 
  //if e else para decisões simples
  if(nome == 'Juninho'){
    print("Seu nome é $nome, você é o cara");
  }else if(nome == 'Marquinho'){
    print("Seu nome é $nome, fala parceiro");
  }
  else{
    print("Não conheço nenhum $nome, vá embora por favor");
  }
}
