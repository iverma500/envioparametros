import 'package:envioparametros/pages/pageStateful.dart';
import 'package:envioparametros/pages/pageStateless.dart';
import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget{

  //constructor
  @override
  Widget build(BuildContext context) {
    String title = "Mi pasar datos";
    return MaterialApp(
      home: Inicio(title: title,), //widget custom
    ); //patrón de diseño
  }
}

class Inicio extends StatefulWidget{
  Inicio({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {

    TextEditingController _textController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: new Text(widget.title??""),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Text here..."
                ),
              )
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PageStateless(_textController.text)
                )
                );
              },
              child: Text("Enviar a Stateless")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PageStateful(_textController.text)
                )
                );
              },
              child: Text("Enviar a Stateful")
          )
        ],
      ),
    );
  }
}
