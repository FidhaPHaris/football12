import 'package:flutter/material.dart';
import 'package:football12/HomeScreen.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 100, 10, 100),
          margin: EdgeInsets.fromLTRB(20, 100, 20, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  checkLogin(context);
                },
                icon: const Icon(Icons.check),
                label: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      //goto home
      Navigator.push(
          ctx, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      final _errorMessage = 'Username and Password doesnot match';
      //snackbar

      //ScaffoldMessenger.of(ctx)
      //.showSnackBar(SnackBar(content: Text(_errorMessage)));
      //alert dialog

      showDialog(
          context: ctx,
          builder: (ctx1) {
            return AlertDialog(
              title: Text('Error'),
              content: Text(_errorMessage),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx1).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            );
          });
    }
  }
}
