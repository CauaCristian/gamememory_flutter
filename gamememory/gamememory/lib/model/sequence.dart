import 'dart:math';

// Classe que gera sequências aleatórias de números
class Sequence {
  List<int> generateRandomSequence(int start, int end, int length) {
    final random = Random();
    final sequence = <int>[];

    while (sequence.length < length) {
      final number = random.nextInt(end - start + 1) + start;
      if (!sequence.contains(number)) {
        sequence.add(number);
      }
    }

    return sequence;
  }
}