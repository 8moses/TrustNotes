import 'package:flutter/material.dart';


class Brickwall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title:Text("Second Page ")
      ),
      body: Center(
        child:RaisedButton(
          child:Text("Go Back"),
          onPressed: (){
            Navigator.pop(context);
          }
        )
      ),
    );
  }
}

RaisedButton({required Text child, required Null Function() onPressed}) {
}