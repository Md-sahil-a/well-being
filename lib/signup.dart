import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:well_being/const.dart';
import 'package:well_being/login.dart';

class SIGNUP extends StatefulWidget {
  const SIGNUP({Key? key}) : super(key: key);

  @override
  _SIGNUPState createState() => _SIGNUPState();
}

class _SIGNUPState extends State<SIGNUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backlogin,
      body: Column(
        children: [
          Text(
            'Hello !',
            style: mystyle,
          ),
          Text(
            'Signup to, get started',
            style: TextStyle(
              color: mycolor,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 220.0,
            width: 220.0,
            child: Image.asset('images/loginboy.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Name',
                labelStyle: myfiledstyle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Email',
                labelStyle: myfiledstyle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'Password',
                labelStyle: myfiledstyle,
              ),
            ),
          ),
          CupertinoButton(
            color: basicColor,
            borderRadius: myborder,
            child: const Text('Signup'),
            onPressed: () {},
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Already have an Accoun?',
                  style: TextStyle(
                    color: basicColor,
                    fontSize: 20.0,
                  ),
                ),
                TextSpan(
                  text: 'Login',
                  style: const TextStyle(
                    color: basicColor,
                    fontSize: 20.0,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
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
        ],
      ),
    );
  }
}
