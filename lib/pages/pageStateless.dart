import 'package:flutter/material.dart';

class PageStateless extends StatelessWidget{

  final String text;
  const PageStateless(this.text,{super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Page"),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}