import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color to black
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Button 1
            ElevatedButton(
              onPressed: () {
                // Add your navigation logic here
              },
              child: Text('Button 1'),
            ),
            SizedBox(height: 20), // Space between buttons

            // Button 2
            ElevatedButton(
              onPressed: () {
                // Add your navigation logic here
              },
              child: Text('Button 2'),
            ),
            SizedBox(height: 20), // Space between buttons

            // Button 3
            ElevatedButton(
              onPressed: () {
                // Add your navigation logic here
              },
              child: Text('Button 3'),
            ),
          ],
        ),
      ),
    );
  }
}