import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:io';

void main(List<String> arguments) {
 //Declarar variable 
  int contador;
  String nombre;
  double nota;
  bool esAdulto;


  //asignar valores a las variables
  contador = 0;
  nombre = "Maria";
  nota = 8.5;
  esAdulto = true;


  //Declaro una condicional
  if(nota>8){
    print("Aprobaste");
  }else{
    print("Reprobaste");
  }


 switch(nota.ceil()){
  case 8:
  case 9:
    print("B");
    break;
  case 10:
    print("A");
    break;
  default:
    print("Nota no válida");
    break;
 }

  //Ciclo while 
  while(contador < 5 ){
    print("El contador tiene el valor de $contador");
    contador++;
  }
  //otro while
  int numero;

  print("Teclea un número: ");
  numero = int.parse(stdin.readLineSync()!);
  int i=1;
  while(i<=10){
  print("$numero x $i = ${numero*i}");
  i++;
  }

  //ciclo for 
  for (var i = 0; i<=10; i++){
    print("$numero x $i = ${numero*i}");
  }

  //break
  for (var i = 0; i<=9; i++){
    if (i==7){
      break;
    }
    print(i);

  }

  //do while
  do{
    print(contador);
    contador++;
  }while(contador < 10);


}


