//Finding the largest and the lowest values in a size-10 array

import 'dart:ffi';
import 'dart:io';
import 'dart:core';

const int size = 10;
void main() {
  var aux;
  List<int> vet = [];
  for (int i = 0; i < size; i++) {
    aux = stdin.readLineSync();
    aux = int.tryParse(aux);
    vet.add(aux);
  }
  print("Maior: ${maiorValor(vet)} Menor: ${menorValor(vet)}");
}

int maiorValor(List<int> vet) {
  int maior = vet[0];
  for (int i = 0; i < size; i++) {
    if (vet[i] > maior) {
      maior = vet[i];
    }
  }
  return maior;
}

int menorValor(List<int> vet) {
  int menor = vet[0];
  for (int i = 0; i < size; i++) {
    if (vet[i] < menor) {
      menor = vet[i];
    }
  }
  return menor;
}
