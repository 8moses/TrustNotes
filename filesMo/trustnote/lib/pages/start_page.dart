import 'package:flutter/material.dart';
import 'package:trustnote/utils/common.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool _signInLoading = false;
  bool _signUpLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text('Sign in!', style: TextStyle(color: Colors.white)),
            ),



            Container(
              width: 300,
              height: 50,
              color: Colors.yellow[500],
            ),
            // Container for Email and Password fields
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                
              ),
              child: Column(
                children: [
                  // Email
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill in an email address';
                        }
                        return null;
                      },
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  SizedBox(height: 8), // Spacing between fields
                  // Password
                  Container(
                    width: 150,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill in a password';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16), 
            

             // sign in
            _signInLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.yellow[200]!)
                      ),
                        onPressed: () async {
                          final isValid = _formKey.currentState?.validate();
                          if (isValid != true) {
                            return;
                          }
                          setState(() {
                            _signInLoading = true;
                          });
                          try {
                            await client.auth.signInWithPassword(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                          } catch (e) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Login failed'),
                              backgroundColor: Colors.redAccent,
                            ));
                            setState(() {
                              _signInLoading = false;
                            });
                          }
                        },
                        child: const Text(' Login')),
                  ),
            //sign up
            _signUpLoading
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.yellow[200]!)
                      ),
                        onPressed: () async {
                          final isValid = _formKey.currentState?.validate();
                          if (isValid != true) {
                            return;
                          }
                          setState(() {
                            _signUpLoading = true;
                          });
                          try {
                            await client.auth.signUp(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Succes.'),
                              backgroundColor: Colors.redAccent,
                            ));
                          } catch (e) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Sign-up Failed.'),
                              backgroundColor: Colors.redAccent,
                            ));
                          }
                          setState(() {
                            _signUpLoading = false;
                          });
                        },
                        child: const Text('sign up')),
                  ),
          ],
        ),
      ),
    );
  }
}

    