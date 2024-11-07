//Declaracion de clase
class Coche {
  //Atributos de la clase 
  String marca;
  String? modelo; //o late String modelo;
  int? anio; // o late int anio;


  //Constructor
  Coche (this.marca, this.modelo, this.anio);

  //Metodo
  void mostrarDetalles(){
    print("Marca: $marca, Modelo: $modelo, Año: $anio");
  }
  
  Coche.soloMarca(this.marca){
    modelo = 'Desconocido';
    anio = 0;

  }
  
  
}