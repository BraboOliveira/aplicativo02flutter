class Contato {
  final String name;
  final int numeroDaConta;
  final int id;

  Contato(
    this.id,
    this.name,
    this.numeroDaConta,
  );

  @override
  String toString() {
    return 'Contato{name: $name, numeroDaConta: $numeroDaConta}';
  }
}
