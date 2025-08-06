import 'dart:io';

void main(){
    List<String> alunos = ["Ana","Bruno","Carlos"];
    List<String> presencas = [];
    String confirmar = "não"
    for(String aluno in alunos){
        print("O aluno $aluno está presente? sim/não");
        confirmar = stdin.readLineSync();
        if(confirmar == "sim"{
            presencas.add(aluno!);
        }) 
    }
    for(String aluno in presencas){
        print("O aluno $aluno esta presente!");
    }
}