import 'dart:io';

void main() {
  stdout.write('Digite a primeira nota: ');
  double nota1 = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  stdout.write('Digite a segunda nota: ');
  double nota2 = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  double media = (nota1 + nota2) / 2;
  print('Média final: ${media.toStringAsFixed(2)}');

  if (media >= 7) {
    print('Situação: Aprovado');
  } else if (media >= 4) {
    print('Situação: Recuperação');
  } else {
    print('Situação: Reprovado');
  }
}
