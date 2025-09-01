import 'dart:io';

class Conta{
  String nome_titular;
  double saldoInicial;
  double ? investimento;
  Conta({required this.nome_titular, required this.saldoInicial, this.investimento});
}

class ContaCorrente extends Conta{
  double ? limiteSaqueDiario;
  ContaCorrente({required nome_titular, required saldoInicial, investimento, this.limiteSaqueDiario})
  :super(nome_titular: nome_titular,saldoInicial: saldoInicial,investimento: investimento);
}

class ContaPoupanca extends Conta{
  double taxaRendimento;

  ContaPoupanca({required nome_titular, required saldoInicial, investimento,required this.taxaRendimento}):super(nome_titular: nome_titular,saldoInicial: saldoInicial,investimento: investimento);
  void render(){
    saldoInicial = saldoInicial + (saldoInicial*taxaRendimento);
    print("O saldo atual é ${saldoInicial}");
  }
}

void main(){
  ContaCorrente mariano = ContaCorrente(nome_titular: "mariano", saldoInicial: 50.00);
  ContaPoupanca boca = ContaPoupanca(nome_titular: "João Boça", saldoInicial: 5000, taxaRendimento: 0.01);

  boca.render();
  print("O cliente ${mariano.nome_titular} tem o saldo ${mariano.saldoInicial}");
}