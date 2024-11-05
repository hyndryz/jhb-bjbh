// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:rent_myhousep/TelaHome.dart';
import 'package:rent_myhousep/cara.dart';
import 'package:rent_myhousep/widgets/BuildTextFieldCustom.dart';

class Telaedicaousuario extends StatefulWidget {
  const Telaedicaousuario({super.key});

  @override
  State<Telaedicaousuario> createState() => _TelaedicaousuarioState();
}

class _TelaedicaousuarioState extends State<Telaedicaousuario> {
    // ignore: non_constant_identifier_names
    TextEditingController Nome= TextEditingController();
    TextEditingController gmail= TextEditingController();
    TextEditingController telefone= TextEditingController();
    TextEditingController senha= TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back),
        onPressed: () { _criartela(context);} ,),),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
              width: 50,),

              BuildTextFieldCustom(
              controlador: Nome,
              dica: "Usuario",
                isPesquisa: false,
                semIcone: false),

              BuildTextFieldCustom(
              controlador: gmail,
               dica: "E-mail",
                isPesquisa: false,
                semIcone: true),

              Row(
                children: [
                  Expanded(child:
                  BuildTextFieldCustom(
                  controlador: senha,
                   dica: "telefone 1",
                    isPesquisa: false,
                    semIcone: true),
                    ),

                  SizedBox(
                    height: 0,
                    width: 20,
                  ),

                  Expanded(child: 
                  BuildTextFieldCustom(
                  controlador: telefone,
                  dica: "telefone 2",
                  isPesquisa: false,
                  semIcone: true), 
                  )
                ],
              ),

                
                  Center(
                    child: BuildTextFieldCustom(
                    controlador: senha,
                     dica: "Imposto",
                      isPesquisa: false,
                      semIcone: true),
                  ),
                  

              Row(
                children: [
                  ElevatedButton(
                    onPressed: TelaHome.new ,
                    child: Text("confirmar"),),
                    SizedBox(height: 5, width: 20,),
                  ElevatedButton(
                  onPressed: () {_Negar(context);},
                  child: Text("Negar Imposto")),
                ],
              )

          ],
        ),
      ),
    );
  
  }
  void _criartela(BuildContext context) {
    Navigator.pop(context);
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => TelaHome(),));


}

  void _Negar(BuildContext context) {
    Navigator.pop(context);
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => cara(),));
}}
