//Archivo future_delayed.dart

void main(){
  print("Inicio del programa");

  Future.delayed(Duration(seconds: 2), (){
    return "Hola después de 2 segundos";
  }).then((resultado){
    print(resultado);
  });

  print("Fin del programa");
}