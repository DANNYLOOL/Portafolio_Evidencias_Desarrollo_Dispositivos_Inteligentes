void main(){
  Future ((){
    throw Exception('Algo salió mal');
  }).then((_){
    print('Exitoooo!!');
  }).catchError((error){
    print('Error : $error');
  });
}