// Quinta questão
import 'dart:io';

void main() {
  List<int> numeros = [];
  
  // Cadastro dos números
  print("Digite 15 números:");
  for (int i = 0; i < 15; i++) {
    int numero = int.parse(stdin.readLineSync()!);
    if (!numeros.contains(numero)) {
      numeros.add(numero);
    } else {
      print("Número já cadastrado. Digite outro número.");
      i--; // Decrementa o índice para repetir a entrada do número
    }
  }
  
  // Ordenação dos números
  numeros.sort();

  // Impressão dos números
  print("\nNúmeros cadastrados:");
  print(numeros);

  // Busca sequencial
  print("\nDigite um número para buscar:");
  int numeroBusca = int.parse(stdin.readLineSync()!);
  int posicaoSequencial = buscaSequencial(numeros, numeroBusca);
  if (posicaoSequencial != -1) {
    print("O número $numeroBusca está na posição $posicaoSequencial.");
    print("Esta posição é ${posicaoSequencial % 2 == 0 ? 'par' : 'ímpar'}.");
  } else {
    print("O número $numeroBusca não está na lista.");
  }

  // Busca binária
  int posicaoBinaria = buscaBinaria(numeros, numeroBusca);
  if (posicaoBinaria != -1) {
    print("O número $numeroBusca está na posição $posicaoBinaria.");
    print("Esta posição é ${posicaoBinaria % 2 == 0 ? 'par' : 'ímpar'}.");
  } else {
    print("O número $numeroBusca não está na lista.");
  }
}

int buscaSequencial(List<int> lista, int elemento) {
  for (int i = 0; i < lista.length; i++) {
    if (lista[i] == elemento) {
      return i;
    }
  }
  return -1;
}

int buscaBinaria(List<int> lista, int elemento) {
  int inicio = 0;
  int fim = lista.length - 1;
  while (inicio <= fim) {
    int meio = (inicio + fim) ~/ 2;
    if (lista[meio] == elemento) {
      return meio;
    } else if (lista[meio] < elemento) {
      inicio = meio + 1;
    } else {
      fim = meio - 1;
    }
  }
  return -1;
}
