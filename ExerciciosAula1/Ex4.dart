//NÃO TINHA O EXERCICIO NUMERO 3 NA LISTA
//Criar uma classe Animal com as propriedades [id, nome, cor]. Outra classe chamada Cat e a
//estender de Animal. Adicionar uma nova propriedade do tipo String chamada som e criar um
//objeto de Cat e imprimir todos os detalhes

//criando uma classe Animal
class Animal{
  int id;
  String nome;
  String cor;

  Animal(this.id, this.nome, this.cor);

  void detalhes() {
    print("Animal $id: Nome: $nome | Cor: $cor");
  }
}

//criando uma classe Cat estendida de Animal
class Cat extends Animal{
  String som;

  Cat(int id, String nome, String cor, this.som): super(id, nome, cor);

  @override
  void detalhes(){
    super.detalhes();
    print("Som: $som");
  }
}

void main(){
  //criando um objeto e imprimindo todos os detalhes
  Cat gato = Cat(1, "Nina", "Frajola", "Miau");
  gato.detalhes();
}