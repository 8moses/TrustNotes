import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:trustnote/pages/home_page.dart';
import 'package:trustnote/utils/common.dart';
import 'package:trustnote/pages/start_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://askhbltufavnuwihxdkm.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFza2hibHR1ZmF2bnV3aWh4ZGttIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkwNTAxNzIsImV4cCI6MjAxNDYyNjE3Mn0.Ytv8PIKSqLaSDosNCaH_S5tMfgeExifo2aEK2faUq6M',
    authFlowType: AuthFlowType.pkce,
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      title: 'login pagina',
      home: const MyWidget(),
        
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  User? _user;

  @override
  void initState() {
    _getAuth();
    super.initState();
  }

  Future<void> _getAuth() async {
    setState(() {
      _user = client.auth.currentUser;
    });
    client.auth.onAuthStateChange.listen((event) {
      setState(() {
        _user = event.session?.user;
      });
    });
  }

  @override
Widget build(BuildContext context) {
  Widget pagina;

  if (_user == null) {
    // If no user is logged in, show the StartPage
    pagina = const StartPage();
  } else {
    // If a user is logged in, show the HomePage
    pagina = const HomePage();
  }

  return Scaffold(
    body: pagina,
  );
}
}
