import 'package:flutter/material.dart';
import 'package:test/TorD.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Page Navigation",
      home: FirstPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 28, 28, 28),
      ),
    ),
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("T R U S T   N O T E"),
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Brickwall()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                minimumSize: Size(320, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('B R I C K W A L L'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TorD()),
                );
                // Add the logic for the second button
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                minimumSize: Size(320, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('T R U T H  or  D A R E'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WMLT()),
                );
                // Add the logic for the third button
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                minimumSize: Size(320, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text("W H O'S  M O S T  L I K E L Y  T O ?"),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Exclusive()),
                );
                // Add the logic for the fourth button
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 0, 0, 0),
                minimumSize: Size(320, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('E X C L U S I V E -20%'),
            ),
          ],
        ),
      ),
    );
  }
}

//begin T R U T H  or  D A R E

class TorD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("T R U T H  or  D A R E")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Page 3'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text('Go Back to Page 1'),
            ),
          ],
        ),
      ),
    );
  }
}

// begin W H O'S  M O S T  L I K E L Y  T O ?

class WMLT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("W H O'S  M O S T  L I K E L Y  T O ?")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Page 3'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text('Go Back to Page 1'),
            ),
          ],
        ),
      ),
    );
  }
}

//begin E X C L U S I V E

class Exclusive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E X C L U S I V E")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Page 3'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text('Go Back to Page 1'),
            ),
          ],
        ),
      ),
    );
  }
}

//begin B R I C K W A L L

class Brickwall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("B R I C K W A L L")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Page 2'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              child: Text('G O  B A C K  T O  H O M E'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Brickwall()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}
