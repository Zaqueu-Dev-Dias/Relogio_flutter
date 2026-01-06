import 'package:flutter/material.dart';

import 'linhas.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,child: Center(child: Ponteiro(),),);
  }
}

class Ponteiro extends StatefulWidget {
  const Ponteiro({super.key});

  @override
  State<Ponteiro> createState() => _PonteiroState();
}

class _PonteiroState extends State<Ponteiro> {
  @override
  Widget build(BuildContext context) {
    return Container(child:Stack(children: [CustomPaint(painter: DrawLinePainter(Offset(-5,50), Offset(0, 0)),size: Size(100, 100),)],),width: 300, height: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(150), border: Border.all(color: Colors.black)),);
  }
}

