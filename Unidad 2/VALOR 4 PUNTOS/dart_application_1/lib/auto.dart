import 'vehiculo.dart';

//subclase vehiculo
class Auto extends Vehiculo{
  //atributos propios 

  String modelo;
  
  //Crear constructor
  Auto(String marca, int anio, this.modelo): super(marca, anio);
  

}