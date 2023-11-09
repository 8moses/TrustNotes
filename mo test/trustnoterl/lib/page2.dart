import 'package:flutter/material.dart';
import 'start_page.dart'; // Importing StartPage
 import 'package:supabase_flutter/supabase_flutter.dart';
 

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('lib/images/trustnote.png'),
                const Positioned(
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
            const SizedBox(height: 20),
            CreateAccountWidget(context: context), // Passing context
          ],
        ),
      ),
    );
  }
}

class CreateAccountWidget extends StatelessWidget {
  final BuildContext context;
  const CreateAccountWidget({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          "Let's create your profile!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StartPage()), // Navigating to StartPage
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.black, // Text color
            minimumSize: const Size(250, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          child: const Text(
            'Next',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
