import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_25/UI/MyWidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: 430,
        height: 926,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFFFF00F4), Color(0xFF00FFFF)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 60,
              left: 0.25,
              child: Image.asset("assets/images/Ellipse.png"),
              width: 215,
              height: 215,
            ),
            Positioned(
              bottom: 20,
              right: 0.25,
              child: Image.asset("assets/images/Ellipse.png"),
              width: 287,
              height: 287,
            ),
            MyWidget()
          ],
        ),
      ),
    );
  }
}
