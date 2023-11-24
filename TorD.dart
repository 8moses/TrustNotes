import 'package:flutter/material.dart';


class TorD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title:Text("T R U T H  or  D A R E")
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