import 'package:flutter/material.dart';
import 'package:well_being/home1.dart';
import 'package:well_being/signup.dart';
import 'health_home.dart';
import 'login.dart';
import 'forgot.dart';

void main() => runApp(Health());

class Health extends StatefulWidget {
  const Health({Key? key}) : super(key: key);

  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/second': (context) => const Login(),
        '/third': (context) => const SIGNUP(),
        '/fourth': (context) => const Forgot(),
        '/fifth': (context) => const HomePage(),
      },
    );
  }
}
