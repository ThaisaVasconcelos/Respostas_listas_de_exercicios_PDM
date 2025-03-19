//Criar uma classe Camera com propriedades privadas [id, marca, cor, preço] com metodos getter e 
//setter para acessar e modificar os valores. Criar 3 objetos dela e imprimir todos os detalhes

//criando a classe Camera
class Camera{
  int  _id;
  String _marca;
  String _cor;
  num _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  //Getter
  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  num get preco => _preco;

  //Setter
  set id(int novoId) => _id - novoId;
  set marca(String novaMarca) => _marca = novaMarca;
  set cor(String novaCor) => _cor = novaCor;
  set preco(num novoPreco) => _preco = novoPreco;

  void detalhes() {
    print("Camera $id:\n Marca: $marca | Cor: $cor, | Preço: $preco");
  }
}

void main(){
  //criando 3 objetos
  Camera camera1 = Camera(1, "Instax", "Rosa", 500.00);
  Camera camera2 = Camera(2, "Sony", "Preto", 2950.00);
  Camera camera3 = Camera(3, "Canon", "Vermelho", 3730.99);

  //imprimindo todos os valores
  camera1.detalhes();
  camera2.detalhes();
  camera3.detalhes();

  //alterando
  camera1.preco = 320.00;
  camera1. cor = "Azul";

  //imprimindo o valor da camera alterada
  print("\nDepois da alteração: ");
  camera1.detalhes();

}