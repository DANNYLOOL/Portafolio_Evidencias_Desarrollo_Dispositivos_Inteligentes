void main(){
  var numeros =[1,3,6,8,7];   
  //Recorre la lista imprimiendo los valores
  for(var i in numeros){
    print (i);
  }

  //Recorrer lista nuevamente
  print("Recorriendo con forEach");
  numeros.forEach((i)=> print(i));
  //Añadir valor a la lista 
  numeros.add(5);
  print(numeros);
  //Borrar valor de la lista
  numeros.remove(8);
  print(numeros);

  //craer maps
  Map<String, int> verduras ={"cilantro":1, "Zanahoria":3, "Apio":5, "Coliflor":2};
  print(verduras);

  verduras.remove("Zanahoria");
  print(verduras);

  verduras["Papas"] = 8;
  print(verduras);

  print(verduras.isEmpty);
  print(verduras.length);
  print(verduras.keys);
  print(verduras.values);


  for (var verdura in verduras.entries){
    print("${verdura.key}: ${verdura.value}");

  }
}