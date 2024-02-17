//Primeira questão
class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);
}

void main() {
  List<Funcionario> funcionarios = [];

  // Cadastro de funcionários
  for (int i = 0; i < 5; i++) {
    print("Cadastro do funcionário ${i + 1}:");
    print("Nome: ");
    String nome = stdin.readLineSync()!;
    print("Salário: ");
    double salario = double.parse(stdin.readLineSync()!);
    funcionarios.add(Funcionario(nome, salario));
  }

  // Ordenação por salário crescente
  funcionarios.sort((a, b) => a.salario.compareTo(b.salario));
  print("\nFuncionários em ordem crescente de salário:");
  funcionarios.forEach((funcionario) =>
      print("${funcionario.nome} - Salário: ${funcionario.salario}"));

  // Ordenação por salário decrescente
  funcionarios.sort((a, b) => b.salario.compareTo(a.salario));
  print("\nFuncionários em ordem decrescente de salário:");
  funcionarios.forEach((funcionario) =>
      print("${funcionario.nome} - Salário: ${funcionario.salario}"));

  // Ordem alfabética
  funcionarios.sort((a, b) => a.nome.compareTo(b.nome));
  print("\nFuncionários em ordem alfabética:");
  funcionarios.forEach((funcionario) =>
      print("${funcionario.nome} - Salário: ${funcionario.salario}"));
}
