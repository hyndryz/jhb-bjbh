import 'package:flutter/material.dart';
import 'package:rent_myhousep/TelaEdicaoUsuario.dart';
import 'package:rent_myhousep/TelaHome.dart';
import 'package:rent_myhousep/widgets/BuildTextFieldCustom.dart';

class cara extends StatefulWidget {
  const cara({super.key});

  @override
  State<cara> createState() => _caraState();
}

class _caraState extends State<cara> {
  TextEditingController negar= TextEditingController();
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back),
        onPressed: () {_home(context);} ,),),

        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
                width: 10,),
                
              BuildTextFieldCustom(
              controlador: negar,
              dica: "Quem Esta sonegando imposto", 
              isPesquisa: false, 
              semIcone: false)

                ]))
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
],)],)],),);}

    Card slr() {
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
],)],)],),);}

   void _home(BuildContext context) {
    Navigator.pop(context);
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => TelaHome(),));

   }
    void _Usuario(BuildContext context) {
    Navigator.pop(context);
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => Telaedicaousuario(),));
   }}
