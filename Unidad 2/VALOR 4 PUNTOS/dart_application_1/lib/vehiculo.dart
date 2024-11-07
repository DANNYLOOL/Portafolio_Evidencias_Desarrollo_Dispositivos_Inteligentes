class Vehiculo{
  String marca;
  int anio;

  //atributos de la superclase
  Vehiculo(this.marca, this.anio);

  void mostrarDetalles(){
    print("Marca: $marca, Año: $anio");
  }
}