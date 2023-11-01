// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPagina extends StatefulWidget {
  const LoginPagina({Key? key}) : super(key: key);

  @override
  State<LoginPagina> createState() => _LoginPaginaState();
}

class _LoginPaginaState extends State<LoginPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 24, 
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              color: Colors.yellow,

            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.yellow[200],
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 0, 0, 0)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color.fromARGB(255, 59, 59, 59)),
                      ),
                      onPressed: () {},
                      child: Text('LOGIN', 
                      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text("Terms of Service",
              style: TextStyle(color: Colors.grey)
              ),
            )
          ],
        ),
      ),
    );
  }
}
