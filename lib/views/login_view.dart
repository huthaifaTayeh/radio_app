import 'package:flutter/material.dart';
import '../controllers/user_controller.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: _usernameController),
          TextField(controller: _passwordController, obscureText: true),
          ElevatedButton(
            onPressed: () async {
              var user = await UserController()
                  .login(_usernameController.text, _passwordController.text);
              if (user != null) {
                Navigator.pushReplacementNamed(
                    context, '/home'); // Navigate to home view if successful
              } else {
                // Handle login error
              }
            },
            child: Text("Login"),
          )
        ],
      ),
    );
  }

  void _performLogin(BuildContext context) async {
    final email = 'example@example.com'; // fetch from TextField
    final password = 'password123'; // fetch from TextField

    final userApiService = Provider.of<UserApiService>(context, listen: false);
    try {
      var user = await userApiService.login(email, password);
      // Handle success, navigate to another screen, etc.
    } catch (error) {
      // Handle errors, display a message, etc.
    }
  }
}
