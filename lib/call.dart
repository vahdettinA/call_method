import 'package:flutter/material.dart';

class Callback extends StatefulWidget {
  Callback({super.key, required this.onprossed, required this.onprossed2});
  final bool Function() onprossed;
  final String Function() onprossed2;
  @override
  State<Callback> createState() => _CallbackState();
}

class _CallbackState extends State<Callback> {
  Color? titleColor;
  String title = "";
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        onPressed: () {
          setState(() {
            title = widget.onprossed2.call();
          });
          bool response = widget.onprossed.call();
          setState(() {
            titleColor = response ? Colors.green : Colors.red;
          });
        },
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: titleColor),
        ));
  }
}
