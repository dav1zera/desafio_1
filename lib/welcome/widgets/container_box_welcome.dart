import 'package:flutter/material.dart';

class ContainerBoxWelcome extends StatefulWidget {
  const ContainerBoxWelcome({Key? key}) : super(key: key);

  @override
  _ContainerBoxWelcomeState createState() => _ContainerBoxWelcomeState();
}

class _ContainerBoxWelcomeState extends State<ContainerBoxWelcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4.0,
              spreadRadius: 0.0,
              offset: Offset(4.0, 4.0),
            )
          ]),
    );
  }
}
