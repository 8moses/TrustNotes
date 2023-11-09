import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text on Wall',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class ImageTextItem {
  String imageUrl;
  String text;

  ImageTextItem(this.imageUrl, this.text);
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  List<ImageTextItem> _items = [];

  void _addImageTextItem() {
    setState(() {
      _items.add(ImageTextItem('lib/img/post-it.png', _controller.text));
      _controller.clear();
    });
  }

  void _showTextDialog(String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Je challenge is...'),
          content: Text(text),
          actions: <Widget>[
            TextButton(
              child: Text('Sluiten'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('B R I C K  W A L L')),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/img/figma.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // Aantal kolommen
                    crossAxisSpacing: 5, // Ruimte tussen kolommen
                    mainAxisSpacing: 5, // Ruimte tussen rijen
                  ),
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => _showTextDialog(_items[index].text),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 100.0,
                              padding: EdgeInsets.all(20.0),
                              child: Image.asset(_items[index].imageUrl, fit: BoxFit.contain),
                            ),
                          ),
                          Positioned(
                            right: 30,
                            bottom: 25,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                '${index + 1}',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(labelText: 'Typ hier...', labelStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 40.0),
                  child: ElevatedButton(
                    onPressed: _addImageTextItem,
                    child: Text('Posten'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}