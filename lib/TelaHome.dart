import 'package:flutter/material.dart';
import 'package:rent_myhousep/TelaEdicaoUsuario.dart';
import 'package:rent_myhousep/widgets/BuildTextFieldCustom.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  TextEditingController PesquisadDeCarro= TextEditingController();
  
  String campoFinal="";


@override
Widget build(BuildContext context) {
  return Scaffold(
    
  backgroundColor: const Color.fromARGB(255, 118, 60, 141),
  
  appBar: AppBar(

    centerTitle: true,
    title: const Text("Monster High"),

    actions: [
      IconButton(
        onPressed: () {
          _criartela(context);
        },
        icon: const Icon(Icons.heart_broken_sharp),iconSize: 45, color: Colors.black,),
],
      backgroundColor: const Color.fromARGB(255, 114, 38, 133),
),

body: Padding(
  padding: const EdgeInsets.all(25),
  child: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: BuildTextFieldCustom(
            controlador: PesquisadDeCarro, 
            dica: "Digite seu nome",
            isPesquisa:  true,
            semIcone: true,
            ),
          ),
          Center(
            child: _buildTextfield("www.morceta.com.br"),),
    
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: Center(child: texto_Modificado("Imagem do dia")),
    ),
    
    Center(
      child: Image.asset("images/hello.jpg",
        fit: BoxFit.fitHeight,
        scale: 2,
        filterQuality:FilterQuality.medium ,),
            ),
    
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: Center(child: texto_Modificado("Comentario")),
    ),
    
    Center(child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: _buildTextfield("deixe seu comentario aqui"),
    )),
    
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: build_card(),
    ),
    
    
    
     const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(Icons.remove_red_eye),
        Text("ver mais"),],
            ),
          ]
        ),
  ),
    )
  );
}

Card build_card() {
  return Card(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.person,
        size: 40,),
  
        Text("Clawdeen"),
  
        Column(
          children: [
  
            Row(
              children: [
                Text("Club Monster"),
                Icon(Icons.search),
  
        
              ],
            ),
            Row(
          children: [
            Text("Slr : "),
            
          ],
        )
          ],
        )
      ],
    ),
  );
}

Text texto_Modificado(ru) {
  return Text(ru,
    style: TextStyle(fontSize: 22,
                     fontWeight: FontWeight.bold));
}

Widget _buildTextfield(ws,) {
  return SizedBox(
          width: 600,
          height: 50,
          child: TextField(
            controller: PesquisadDeCarro,
            decoration: InputDecoration(
              prefix: const Icon(Icons.search),
              hintText: ws,
              hintStyle: const TextStyle(color: Colors.grey),
              fillColor: Colors.pink[50],
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30))
            
      )
    ),
  );
}
void _CLICKDOBUTAO() {
  setState(() {
    campoFinal=PesquisadDeCarro.text;
      }
    );  
  }
  
  void _criartela(BuildContext context) {
    Navigator.pop(context);
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => Telaedicaousuario(),));


  }}