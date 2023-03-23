import 'package:call/call.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController t1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          Callback(
            onprossed: () {
              if (int.parse(t1.text) % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
            onprossed2: () {
              return t1.text;
            },
          )
        ],
      ),
    );
  }
}
