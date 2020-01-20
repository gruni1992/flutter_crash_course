 import 'package:flutter/material.dart';

class LocatonDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World!!!"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          _section("One", Colors.orange),
          _section("Two", Colors.yellow),
          _section("Three", Colors.red)
        ]
      )
    );
  }

  Widget _section(String title, Color color){
     return Container(
       decoration: BoxDecoration(
         color: color
       ),
       child: Text(title),
     );
  }
}