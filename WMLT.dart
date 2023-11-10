import 'package:flutter/material.dart';


class WMLT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar(
        title:Text("W H O'S  M O S T  L I K E L Y  TO ?")
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