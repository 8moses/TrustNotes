import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 36, 36),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('lib/images/trustnote.png'),
                Positioned(
                  top: 10,
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CreateAccountWidget(),
          ],
        ),
      ),
    );
  }
}

class CreateAccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Let's create your profile!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Add functionality for the "Next" button here
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.black, // Button background color
            onPrimary: Colors.white, // Text color
            minimumSize: Size(250, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          child: Text(
            'Next',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
