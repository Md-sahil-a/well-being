import 'package:flutter/material.dart';
import 'package:well_being/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: basicColor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle))
        ],
      ),
    );
  }
}
