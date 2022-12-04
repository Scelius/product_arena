import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

/* 
  ToDo list:
  Step 1: creating the main layout of the app (UI only)

  */

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/productalogo.png'),
          SizedBox(
            height: 44.0,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "E-mail",
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          TextField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Password",
            ),
          )
        ],
      ),
    );
  }
}
