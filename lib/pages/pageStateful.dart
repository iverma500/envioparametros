import 'package:flutter/material.dart';

class PageStateful extends StatefulWidget{

  final String text;
  const PageStateful(this.text,{super.key});

  @override
  _PageStatefulState createState() => _PageStatefulState();

}

class _PageStatefulState extends State<PageStateful>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Page"),
      ),
      body: Center(
        child: Text(widget.text),
      ),
    );
  }
}