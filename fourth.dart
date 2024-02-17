// Quarta questão
class Aluno {
  String nome;
  double nota1;
  double nota2;

  Aluno(this.nome, this.nota1, this.nota2);

  double calcularMediaPonderada() {
    return (nota1 * 2 + nota2 * 3) / 5;
  }
}

void main() {
  List<Aluno> alunos = [];

  // Cadastro dos alunos
  for (int i = 0; i < 8; i++) {
    print("Cadastro do aluno ${i + 1}:");
    print("Nome: ");
    String nome = stdin.readLineSync()!;
    print("Nota 1: ");
    double nota1 = double.parse(stdin.readLineSync()!);
    print("Nota 2: ");
    double nota2 = double.parse(stdin.readLineSync()!);
    alunos.add(Aluno(nome, nota1, nota2));
  }

  // Listar alunos ordenados pela média ponderada das notas
  alunos.sort((a, b) => b.calcularMediaPonderada().compareTo(a.calcularMediaPonderada()));
  print("\nAlunos ordenados pela média ponderada:");
  alunos.forEach((aluno) =>
      print("${aluno.nome} - Média: ${aluno.calcularMediaPonderada().toStringAsFixed(2)}"));

  // Listar alunos em ordem crescente pela nota 1
  alunos.sort((a, b) => a.nota1.compareTo(b.nota1));
  print("\nAlunos ordenados pela nota 1:");
  alunos.forEach((aluno) => print("${aluno.nome} - Nota 1: ${aluno.nota1}"));

  // Listar alunos reprovados em ordem alfabética
  List<Aluno> reprovados = alunos.where((aluno) => aluno.calcularMediaPonderada() < 7).toList();
  reprovados.sort((a, b) => a.nome.compareTo(b.nome));
  print("\nAlunos reprovados em ordem alfabética:");
  reprovados.forEach((aluno) =>
      print("${aluno.nome} - Média: ${aluno.calcularMediaPonderada().toStringAsFixed(2)}"));
}
