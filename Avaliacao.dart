import 'dart:collection';
import 'dart:ffi';
import 'dart:io';

void main(){
  // ITENS DO MERCADO
  List<String> produtos = ["maca","mamao","macarrao"]; // Listas em python não precisam ser declaradas com tipagem (List<tipo>) é escrito apenas variavel = [] (e não precisa de ;)
  List<double> precos = [2.5,5.5,4.33];
  List<int> estoque = [50,20,120];

  // ITENS DO CLIENTE
  List<String> carrinhoProdutos = [];
  List<int> carrinhoQuantidades = [];
  List<double> carrinhoPrecos = [];
  List<double> carrinhoTotalPorItem = [];

  //DADOS DO CLIENTE
  String ? nomeCliente; // Python alem de não precisar de tipagem, não precisa informar se o valor aceito é null (?)
  String ? documento;
  while(nomeCliente == null || nomeCliente!.trim().isEmpty || documento == null || documento!.trim().isEmpty){ // Python não usa (){} em funções,while,for,etc. é apenas : quebra de linha com tab
  // tambem não possui validação de null (!)
    try{
      print("Digite o nome do cliente: ");
      nomeCliente = stdin.readLineSync(); // Python recebe a mensagem do print dentro de input, colocando tudo em uma só linha
      print("Digite o documento do cliente: ");
      documento = stdin.readLineSync();
    }catch(e){
      print("##### Entrada incorreta! entre com um valor valido, erro: $e ######"); //variaveis são concatenadas no python com `{}` ao envés de $ ou ${}
    }
    if(nomeCliente == null || nomeCliente!.trim().isEmpty || documento == null || documento!.trim().isEmpty){
      print("######## Sistema não aceita valores nulos ou vazios! ########## \n");
    }
  }

  //INFORME DE PRODUTOS
  String repeticao = "sim";
  String ? produto;
  int ? quantidade;
  
  while(repeticao == "sim"){
    print("Digite o nome do produto que deseja adicionar ao carrinho: ");
    produto = stdin.readLineSync();

    try{
      print("Digite a quantidade desse produto: ");
      quantidade = int.parse(stdin.readLineSync()!);
    }on FormatException{ // python possui apenas TRY,CATCH,FINALY não possui a estrutura ON para tratar erros especificos (FormatException nesse caso)
      print("########## Quantidade no formato incorreto! Digite uma quantidade numerica e inteira! ############### \n");
    }

    if(produto == null || produto!.trim().isEmpty){
      print("############# Produto não pode ser nulo ou vazio! digite um valor valido! ############# \n");
    }
    else{
      // Cria um indice para atrelar as posições na lista de produtos com seus respectivos precos e quantidades em estoque
      int indice = produtos.indexOf(produto);
      // Checa se o produto está na lista de produtos e se existe no estoque:
      if(listarProdutos(produtos).contains(produto) && verificarEstoque(estoque)[indice] - quantidade! >= 0){
        // Remove a quantidade informada do produto no estoque
        estoque[indice] = estoque[indice] - quantidade;

        //adiciona as listas os itens informados
        carrinhoProdutos.add(produto);
        carrinhoPrecos.add(precos[indice]);
        carrinhoQuantidades.add(quantidade);
      }
      else{
        print("############# Produto informado não existe ou não temos a quantidade pedida no estoque! ##############\n");
      }
    }
    print("Deseja adicionar outro produto? digite sim ou não");
    repeticao = stdin.readLineSync()!;
  }

  //PAGAMENTO
  double subTotal = 0;
  double subTotalComJuros = 0;
  double ? pagamento;
  double troco = 0;
  int ? escolhaPagamento;
  String formaDePagamento = "";

  for(int i=0; i<carrinhoQuantidades.length;i++){
    print("quantidades informadas: ${carrinhoQuantidades[i]}");
    subTotal += calcularTotal(carrinhoQuantidades[i], carrinhoPrecos[i]);
    carrinhoTotalPorItem.add(calcularTotal(carrinhoQuantidades[i], carrinhoPrecos[i]));
  }
  print("O subtotal da compra é: $subTotal");
  
  while(escolhaPagamento != 1 && escolhaPagamento != 2 && escolhaPagamento != 3 && escolhaPagamento != 4){
    try{
      menuDePagamento();
      escolhaPagamento = int.parse(stdin.readLineSync()!);
    }on FormatException{
      print("############ Entrada incorreta, digite um numero inteiro!############ \n");
    }
    if(escolhaPagamento != 1 && escolhaPagamento != 2 && escolhaPagamento != 3 && escolhaPagamento != 4){
      print("Digite um valor de 1 a 4!");
    }
  }
  
  switch(escolhaPagamento){ //em python temos match case ao enves de switch case, e o default seria case:
    case 1:
      while(troco <=0){
        print("Informe o quanto de dinheiro você quer usar para pagar a vista: ");
        pagamento = double.parse(stdin.readLineSync()!);
        if(pagamento - subTotal <0){
          print("#### O valor de $pagamento não é o suficiente para pagar $subTotal! ####### \n");
        }
        troco = pagamento - subTotal;
      }
      print("Voce pagou $pagamento para o valor de $subTotal, seu troco é $troco! ");
      formaDePagamento = "A vista em dinheiro";
      break;
    case 2:
      print("Voce escolheu pagar no debito, o valor a ser pago é: $subTotal! ");
      formaDePagamento = "A vista no debito";
      break;
    case 3:
      print("Voce escolheu pagar no credito o valor de $subTotal ");
      subTotalComJuros = subTotal + (subTotal*0.05);
      print("O credito adiciona juros de 5%, fazendo o total ser pago: $subTotal! ");
      formaDePagamento = "Parcelado no credito";
      break;
    case 4:
      print("Voce escolheu pagar no pix, o valor a ser pago é: $subTotal! ");
      formaDePagamento = "A vista no PIX";
      break;
    default:
      print("############# De alguma forma você informou um valor fora do especificado, cancelando compra! #########");
      break;
  }

  // EMITIR NOTA FISCAL
  emitirNotaFiscal(nomeCliente, documento, carrinhoProdutos, carrinhoQuantidades, carrinhoPrecos, carrinhoTotalPorItem, formaDePagamento, subTotal, subTotalComJuros, troco);

}

void emitirNotaFiscal(String nomeCliente, String documento,
 List<String> carrinhoProdutos, List<int> carrinhoQuantidades, List<double>carrinhoPrecos,List<double>carrinhoTotalPorItem,
 String formaDePagamento,
 double subTotal, double subTotalComJuros,double troco){
  print("\n\n Nota fiscal: ");
  print("Nome do cliente: $nomeCliente");
  print("Documento do cliente: $documento");
  print("Itens comprados: $carrinhoProdutos");
  print("Valores desses itens: $carrinhoPrecos");
  print("Quantidade desses itens: $carrinhoQuantidades");
  print("Valor total da compra por produto $carrinhoTotalPorItem");
  if(formaDePagamento != "Parcelado no credito"){
      print("Total da compra $subTotal");
  }else{
    print("O total da compra foi $subTotal, aplicados juros de 5% ficou $subTotalComJuros");
  }
  print("A forma de pagamento foi $formaDePagamento");
  if(troco>0){
    print("O troco foi de $troco");
  }
}

List<String> listarProdutos(List<String> nomeProduto){
  return nomeProduto;
}

List<double> listarPrecos(List<double> preco){
  return preco;
}

List<int> verificarEstoque(List<int> quantidadeEstoque){
    return quantidadeEstoque;
}

void menuDePagamento(){
    print("Digite a forma de pagamento: ");
    print("1- A vista em dinheiro ");
    print("2- A debito ");
    print("3- A credito ");
    print("4- Pix");
}

double calcularTotal(int quantidade, double preco){
  double totalProduto = quantidade * preco;
  return totalProduto;
}