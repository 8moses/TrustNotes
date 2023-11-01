
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Menu met Kleinere Hoogte',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Menu met Kleinere Hoogte'),
//         actions: <Widget>[
//           Builder(
//             builder: (BuildContext context) {
//               return IconButton(
//                 icon: Icon(Icons.menu),
//                 onPressed: () => Scaffold.of(context).openEndDrawer(),
//                 tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//               );
//             },
//           ),
//         ],
//       ),
//       endDrawer: SizedBox(
//         width: MediaQuery.of(context).size.width * 0.3, // Adjusted width here
//         height: MediaQuery.of(context).size.height * 0.6, // Adjusted height
//         child: Drawer(
//           child: Container(
//             color: Colors.black,
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: <Widget>[
//                 DrawerHeader(
//                   child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                   ),
//                 ),
//                 ListTile(
//                   title: Text('HOME', style: TextStyle(color: Colors.white)),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   title: Text('SHOP', style: TextStyle(color: Colors.white)),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   title: Text('SETTINGS', style: TextStyle(color: Colors.white)),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 ListTile(
//                   title: Text('MORE OPTIONS', style: TextStyle(color: Colors.white)),
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: Center(child: Text('Voorbeeld met menu van kleinere hoogte')),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu met Kleinere Hoogte',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Achtergrond van Scaffold ingesteld op zwart
      appBar: AppBar(
        title: Text('Menu met Kleinere Hoogte'),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ],
      ),
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.3, 
        height: MediaQuery.of(context).size.height * 0.6, 
        child: Drawer(
          child: Container(
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Spacer(),
                Icon(Icons.home, color: Colors.white, size: 24),
                SizedBox(height: 10),
                Text('HOME', style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(height: 20),
                Icon(Icons.group, color: Colors.white, size: 24),
                SizedBox(height: 10),
                Text('FRIENDS', style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(height: 20),
                Icon(Icons.settings, color: Colors.white, size: 24),
                SizedBox(height: 10),
                Text('SETTINGS', style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(height: 20),
                Icon(Icons.notifications, color: Colors.white, size: 24), 
                SizedBox(height: 10),
                Text('NOTIFICATIONS', style: TextStyle(color: Colors.white, fontSize: 16)),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
      body: Center(child: Text('Voorbeeld met menu van kleinere hoogte', style: TextStyle(color: Colors.white))), 
    );
  }
}




