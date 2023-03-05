import 'package:flutter/material.dart';
import 'package:training2/login.dart';

class Diva extends StatelessWidget {
  const Diva({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    new Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Image(image: AssetImage('assets/images/onboard1.jpeg'))),
    );
  }
}
