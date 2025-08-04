import 'dart:io';

void main(){
  List<String> generos = ["Ação","Terror","Comédia"];

  for(String i in generos){
    print("Genero disponivel: $i");
  }
  generos.forEach((String i) => print("Genero forEach $i"));
}