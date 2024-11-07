void main(){
  print("Inicio del programa");

  Future((){
    return 'Hola mundo!';
  }).then((resultado){
    print(resultado);
  });

  print("Fin del programa");
  
}