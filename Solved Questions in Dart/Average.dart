//Read 10 numbers then calculate their average
import 'dart:ffi';
import 'dart:io';
import 'dart:core';

const int size = 3;
void main() {
  var aux;
  int i;
  List<int> vet = [];
  print("vet:");
  for (i = 0; i < size; i++) {
    aux = stdin.readLineSync();
    aux = int.parse(aux);
    vet.add(aux);
  }
  print("lista:");
  for (i = 0; i < size; i++) {
    print("Pos ${i + 1} valor: ${vet[i]}");
  }
  print("Soma ${media(vet)} media ${media(vet) / size}");
}

double media(List<int> vet) {
  int s = 0;
  double media;
  for (int i = 0; i < size; i++) {
    s += vet[i];
  }
  media = s.toDouble();
  return media;
}
