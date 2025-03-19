// criar uma classe House com as propriedades [id, nome, preço]. Criar um construtor para ela
// e criar 3 objetos. Adicionar a uma lista e imprimir todos os detalhes

//criando a classe House
class House{
  int id;
  String nome;
  num preco;

  //criando um construtor
  House(this.id, this.nome, this.preco);

  void detalhes() {
    print("House $id\n Nome: $nome | Preço R\$${preco.toStringAsFixed(2)}");
  }
}


void main(){
  //criando 3 objetos
  House house1 = House(1, "Casa de Bragança", 350000.00);
  House house2 = House(2, "Casa de Atibaia", 420000.00);
  House house3 = House(3, "Casa de Campinas", 760000.00);

  //adicionando a uma lista
  List<House> lista = [house1, house2, house3];

  //imprimindo todos os detalhes
  for(var house in lista){
    house.detalhes();
  }
}