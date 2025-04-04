//Criar uma classe Laptop com as propriedades [id, nomde, ram] e
//criar 3 objetos dela, imprimindo todos os detalhes

//criando a classe Laptop
class Laptop {
  int id;
  String nome;
  int ram;

  Laptop(this.id, this.nome, this.ram);

  @override
  String toString() {
    return "Laptop: $id, $nome, $ram";
  }
}

void main() {
  //criando 3 objetos dela
  Laptop laptop1 = Laptop(1, "Dell", 8);
  Laptop laptop2 = Laptop(2, "HP", 16);
  Laptop laptop3 = Laptop(3, "Lenovo", 12);

  //imprimindo todos os detalhes
  print(laptop1); //Laptop: 1, Dell, 8
  print(laptop2); //Laptop: 2, HP, 16
  print(laptop3); //Laptop: 3, Lenovo, 12
}