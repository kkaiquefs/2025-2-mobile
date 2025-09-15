import 'dart:io';

void main() {
  double saldo = 1000.00;

  while (true) {
    print('\nMenu:');
    print('1 - Saldo');
    print('2 - Saque');
    print('3 - Depósito');
    print('0 - Sair');
    stdout.write('Escolha uma opção: ');
    int opcao = int.parse(stdin.readLineSync()!);

    if (opcao == 0) {
      print('Encerrando o programa.');
      break;
    }

    switch (opcao) {
      case 1:
        print('Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
        break;

      case 2:
        stdout.write('Digite o valor do saque: R\$ ');
        double saque = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));
        if (saque <= saldo) {
          saldo -= saque;
          print('Saque realizado com sucesso.');
        } else {
          print('Saldo insuficiente.');
        }
        print('Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
        break;

      case 3:
        stdout.write('Digite o valor do depósito: R\$ ');
        double deposito = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));
        saldo += deposito;
        print('Depósito realizado com sucesso.');
        print('Saldo atual: R\$ ${saldo.toStringAsFixed(2)}');
        break;

      default:
        print('Opção inválida');
    }
  }
}