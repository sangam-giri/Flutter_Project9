import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer() ..onTap =() {
    debugPrint("Hello World");
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child:RichText(
            text: TextSpan(
              text: "Don't have an account ? ",
              style: TextStyle(color: Colors.black,
              fontSize: 20,
              ),
              children: [
                TextSpan(text: "Register",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                recognizer: _gestureRecognizer,
                ),
              ]
            ),
          )
          
          ),),
    );
    
  }
}