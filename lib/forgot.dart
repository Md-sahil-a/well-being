import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:well_being/const.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backforgot,
      body: Column(
        children: [
          const Text(
            'Forgot password',
            style: TextStyle(
              fontSize: 30.0,
              color: basicColor,
            ),
          ),
          SizedBox(
            height: 220.0,
            width: 220.0,
            child: Image.asset('images/forgotgirl.jpg'),
          ),
          const Text(
            'Enter the Email address, associated with your account.',
            style: forgottext,
          ),
          // const Text(
          //   'associated with your account.',
          //   style: forgottext,
          // ),
          const Text(
            'We will send you a link to reset',
            style: TextStyle(
              fontSize: 15.0,
              color: basicColor,
            ),
          ),
          const Text(
            'your Password.',
            style: TextStyle(
              fontSize: 15.0,
              color: basicColor,
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
          CupertinoButton(
            color: basicColor,
            borderRadius: myborder,
            child: const Text('Send '),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
