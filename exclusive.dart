import 'package:flutter/material.dart';


class exclusive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title:Text(" E X C L U S I V E   P A G E ")
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