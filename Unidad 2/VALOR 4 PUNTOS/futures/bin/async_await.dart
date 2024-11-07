//Archivo asyn_await.dart
void main() async{
  print('Inicio del programa');

  String resultado = await Future((){
    return "Hola Mundo!!";
  });

  print(resultado);

  print('Fin del programa');
}