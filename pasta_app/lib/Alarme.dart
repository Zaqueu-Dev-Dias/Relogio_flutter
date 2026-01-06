import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alarme extends StatelessWidget {
  List<Widget> dadoalarme = CadaAlerme();
  Alarme({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Container(color: Colors.black,child: ListView.builder(itemCount: dadoalarme.length,itemBuilder: (contexto, indice){
      return dadoalarme[0];
    }),), Positioned(left: 250,top: 680,child: Container(width: 80, height: 80, decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.white)),child: Center(child: Text('+', style: TextStyle(color: Colors.white, decoration: TextDecoration.none),)),))],);
  }
}

List<Widget> CadaAlerme(){
  List<Widget> lista = [];
  for(int quant = 0; quant <= 10; quant++){
    lista.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(color: Colors.grey[800],borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.white)),
        child: Column(children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('15:30', style: TextStyle(color: Colors.white, decoration: TextDecoration.none, fontSize: 60),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('AM', style: TextStyle(color: Colors.white, decoration: TextDecoration.none, fontSize: 30),),
            ), Icon(Icons.alarm, color: Colors.white, size: 40,)],),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Dias:', style: TextStyle(color: Colors.white, decoration: TextDecoration.none, fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Dom., Seg., Ter., Qua., Qui., Sex.', style: TextStyle(fontSize: 12, color: Colors.white, decoration: TextDecoration.none),)
            )],)],),
      ),
    ));
  }
  return lista;
}