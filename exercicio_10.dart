import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int numeroSecreto = random.nextInt(100) + 1; // 1 a 100
  int tentativa = 0;
  int palpite = 0;

  print('Tente adivinhar o número secreto (entre 1 e 100)!');

  while (palpite != numeroSecreto) {
    stdout.write('Digite seu palpite: ');
    tentativa++;

    String? entrada = stdin.readLineSync();
    if (entrada == null) continue;

    palpite = int.tryParse(entrada) ?? 0;

    String mensagem = palpite > numeroSecreto ? 'Muito alto' : 'Muito baixo';

    if (palpite == numeroSecreto) {
      print('Parabéns! Você acertou em $tentativa tentativa(s).');
    } else {
      print(mensagem);
    }
  }
}