import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pessoas = 0;
  String _textoInfo = "Pode Entrar !";
  
  void _incrementa(int valor) {
    setState(() {
      _pessoas+=valor;
      if (_pessoas < 0) {
        _textoInfo = "Perdendo Clientes ";
      } else if (_pessoas <= 20) {
        _textoInfo = "Pode entrar ";
      } else {
        _textoInfo = "Lotadoo ! ";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Pessoas : " + _pessoas.toString(),
          style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.bold, fontSize: 34),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(20.0),
                child: FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 40, color: Colors.yellow),
                  ),
                  onPressed: () {
                    _incrementa(1);
                  },
                )),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: FlatButton(
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 40, color: Colors.yellow),
                  ),
                  onPressed: () {
                    _incrementa(-1);
                  },
                )),
          ],
        ),
        Text(
          _textoInfo,
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        )
      ],
    );
  }
}

