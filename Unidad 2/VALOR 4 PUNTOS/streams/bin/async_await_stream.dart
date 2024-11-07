void main() async{
  Stream<int> stream = Stream.periodic(
    Duration(seconds: 1), (count)=> count).take(5); //stream periodic
  await for(var data in stream){
    print("Data recibida: $data");
  }
  

}