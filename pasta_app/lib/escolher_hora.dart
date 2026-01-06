import 'package:flutter/material.dart';

class EscolherHora extends StatelessWidget {
  const EscolherHora({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Definir Hora', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Stack(
            children: [
              Positioned(
                top: 110,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide.none,
                      right: BorderSide.none,
                      top: BorderSide(color: Colors.white),
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      ':',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 60,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 300,
                        child: ListWheelScrollView(
                          physics: FixedExtentScrollPhysics(),
                          children: hora(),
                          itemExtent: 50,
                          useMagnifier: true,
                          magnification: 1.5,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 300,
                        child: ListWheelScrollView(
                          physics: FixedExtentScrollPhysics(),
                          children: minutos(),
                          itemExtent: 50,
                          useMagnifier: true,
                          magnification: 1.5,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Selecionar dias da semana:',
                    style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      color: Colors.white
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Seg ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          'Ter ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          'Qua ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          'Quit ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          'Sex ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          'Sab ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          'Dom',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide.none,
                        left: BorderSide.none,
                        top: BorderSide(color: Colors.white),
                        bottom: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Som do alarme', style: TextStyle(color: Colors.white, decoration: TextDecoration.none,fontSize: 20),),
                    ), Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Switch(value: false, onChanged: (valor){}),
                    )],),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide.none,
                        left: BorderSide.none,
                        right: BorderSide.none,
                        bottom: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Vibração', style: TextStyle(color: Colors.white,fontSize: 20, decoration: TextDecoration.none),),
                    ), Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Switch(value: true, onChanged: (valor){}),
                    )],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Definir',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> hora() {
  List<Widget> hor = [];
  for (int nume = 0; nume <= 23; nume++) {
    hor.add(
      Text(
        '$nume',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
  return hor;
}

List<Widget> minutos(){
  List<Widget> minu = [];
  for(int nume = 0; nume <= 59; nume++){
    minu.add(Text('$nume', style: TextStyle(color: Colors.white, fontSize: 30, decoration: TextDecoration.none),));
  }
  return minu;
}
