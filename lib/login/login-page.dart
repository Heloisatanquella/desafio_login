// ignore: file_names
import 'package:flutter/material.dart';

import '../home-page.dart';
const overridade = 'overridade';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  const LoginPage({super.key});
  @override
  @overridade 
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  @override
  @overridade 
  Widget build (BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar( 
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('lib/assets/umbrella-logo.jpg'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'leon@rc4.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'alguma coisa',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Senha',
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        child: const Text('Login'),
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
        }
      ),
    );

    final forgotLabel = ElevatedButton(
      onPressed: () {
        print('Presses');
      }, 
      child: const Text('Forgot Password?'),
      );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            const SizedBox(height: 48.0),
            email,
            const SizedBox(height: 8.0),
            password,
            const SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}

