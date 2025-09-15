import 'dart:io';

void main() {
  print('Menu:');
  print('1 - Pizza - R\$ 25.00');
  print('2 - Hamburguer - R\$ 15.00');
  print('3 - Salada - R\$ 10.00');
  print('4 - Sushi - R\$ 30.00');
  stdout.write('Escolha uma opção (1-4): ');
  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      print('Você escolheu Pizza. Valor: R\$ 25.00');
      break;
    case 2:
      print('Você escolheu Hamburguer. Valor: R\$ 15.00');
      break;
    case 3:
      print('Você escolheu Salada. Valor: R\$ 10.00');
      break;
    case 4:
      print('Você escolheu Sushi. Valor: R\$ 30.00');
      break;
    default:
      print('Opção inválida');
  }
}