import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:well_being/forgot.dart';
import 'package:well_being/home1.dart';
import 'package:well_being/signup.dart';
import 'const.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backlogin,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello again! ',
              style: mystyle,
            ),
            Text(
              'Welcome backYou\'ve \n been missed!!',
              style: TextStyle(
                color: mycolor,
              ),
            ),
            SizedBox(
              height: 220.0,
              width: 220.0,
              child: Image.asset('images/signupgirl.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Email id',
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
                  labelText: 'PassWord',
                  labelStyle: myfiledstyle,
                ),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Forgot()));
                  },
                  child: const Text(
                    'Forgot you\r password?',
                    style: TextStyle(color: basicColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18.0,
            ),
            CupertinoButton(
                color: basicColor,
                borderRadius: myborder,
                child: const Text(
                  'Login',
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                }),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: basicColor,
                    ),
                  ),
                  TextSpan(
                    text: "Register",
                    style: const TextStyle(
                      color: basicColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SIGNUP(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'OR Login with ',
              style: TextStyle(
                color: basicColor,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('images/google.jpg'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('images/fb.jpg'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: Image.asset('images/apple.jpg'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
