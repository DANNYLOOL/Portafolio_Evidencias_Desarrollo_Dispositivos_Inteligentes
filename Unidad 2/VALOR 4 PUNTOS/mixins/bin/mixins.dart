//Crear un mixin
mixin Volador{
  void volar(){
    print("Estoy volando");
  }
}

mixin Corredor{
  void correr(){
    print("Estoy corriendooo!");
  }
}

class Pajaron with Volador, Corredor{}

void main (){
  var pajaro = Pajaron();
  pajaro.volar();
  pajaro.correr();
}