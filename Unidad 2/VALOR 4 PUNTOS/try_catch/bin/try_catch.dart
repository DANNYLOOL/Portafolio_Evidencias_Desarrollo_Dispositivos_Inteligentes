void main(){
  try{
    int resultado = 10 ~/ 3;
    print("El resultado es: $resultado");
  }catch(e, s){
    print('Se produjo una excepción: $e');
    print("Su descripci+on es $s");
  }finally{
    print("Procura no dividir entre cero");
  }

}