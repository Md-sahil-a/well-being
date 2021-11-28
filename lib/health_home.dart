import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:well_being/const.dart';
import 'package:well_being/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: mybackcolor,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(45.0),
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Well-being',
                  style: mystyle,
                ),
              ),
              Text(
                'A health App to be well Menatally and physically',
                style: TextStyle(color: mycolor),
              ),
              Expanded(
                child: Image.asset('images/health1.gif'),
              ),
              CupertinoButton(
                color: Colors.green,
                borderRadius: myborder,
                child: const Text(
                  'Get started',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
