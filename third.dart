// Terceira questão
class Produto {
  int codigo;
  String descricao;
  double preco;

  Produto(this.codigo, this.descricao, this.preco);
}

void main() {
  List<Produto> produtos = [];

  // Cadastro dos produtos
  for (int i = 0; i < 12; i++) {
    print("Cadastro do produto ${i + 1}:");
    print("Código: ");
    int codigo = int.parse(stdin.readLineSync()!);
    print("Descrição: ");
    String descricao = stdin.readLineSync()!;
    print("Preço: ");
    double preco = double.parse(stdin.readLineSync()!);
    produtos.add(Produto(codigo, descricao, preco));
  }

  // Ordenação dos produtos pelo código
  produtos.sort((a, b) => a.codigo.compareTo(b.codigo));

  // Busca sequencial
  int codigoBusca = 0; // Código do produto a ser buscado
  int comparacoesSequencial = 0;
  bool encontradoSequencial = false;
  for (int i = 0; i < produtos.length; i++) {
    comparacoesSequencial++;
    if (produtos[i].codigo == codigoBusca) {
      encontradoSequencial = true;
      break;
    }
  }

  // Busca binária
  int comparacoesBinaria = 0;
  bool encontradoBinaria = false;
  int inicio = 0;
  int fim = produtos.length - 1;
  while (inicio <= fim) {
    int meio = (inicio + fim) ~/ 2;
    comparacoesBinaria++;
    if (produtos[meio].codigo == codigoBusca) {
      encontradoBinaria = true;
      break;
    } else if (produtos[meio].codigo < codigoBusca) {
      inicio = meio + 1;
    } else {
      fim = meio - 1;
    }
  }

  // Saída
  if (encontradoSequencial) {
    print("Produto encontrado usando busca sequencial.");
  } else {
    print("Produto não encontrado usando busca sequencial.");
  }
  print("Número de comparações na busca sequencial: $comparacoesSequencial");

  if (encontradoBinaria) {
    print("Produto encontrado usando busca binária.");
  } else {
    print("Produto não encontrado usando busca binária.");
  }
  print("Número de comparações na busca binária: $comparacoesBinaria");
}
