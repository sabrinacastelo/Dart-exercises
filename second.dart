// Segunda questão
void main() {
  List<int> numeros = [];
  int menorNumero = 0;
  int maiorNumero = 0;

  // Cadastro dos números
  for (int i = 0; i < 10; i++) {
    print("Digite o ${i + 1}º número:");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  // Ordenação dos números
  numeros.sort();

  // Encontrar menor e maior número
  menorNumero = numeros.first;
  maiorNumero = numeros.last;

  // Contagem de ocorrências do menor e do maior número
  int contadorMenor = numeros.where((numero) => numero == menorNumero).length;
  int contadorMaior = numeros.where((numero) => numero == maiorNumero).length;

  print("O menor número é $menorNumero e aparece $contadorMenor vezes.");
  print("O maior número é $maiorNumero e aparece $contadorMaior vezes.");
}
