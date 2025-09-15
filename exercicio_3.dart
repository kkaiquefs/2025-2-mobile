import 'dart:io';

void main() {
  stdout.write('Digite seu peso (kg): ');
  double peso = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  stdout.write('Digite sua altura (m): ');
  double altura = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  double imc = peso / (altura * altura);
  print('Seu IMC é: ${imc.toStringAsFixed(1)}');

  if (imc < 18.5) {
    print('Classificação: Abaixo do peso');
  } else if (imc < 25.0) {
    print('Classificação: Peso normal');
  } else if (imc < 30.0) {
    print('Classificação: Sobrepeso');
  } else if (imc < 35.0) {
    print('Classificação: Obesidade grau 1');
  } else if (imc < 40.0) {
    print('Classificação: Obesidade grau 2');
  } else {
    print('Classificação: Obesidade grau 3');
  }
}
