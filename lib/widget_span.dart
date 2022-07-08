import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';


class SpanWithWidget extends StatefulWidget {
  const SpanWithWidget({Key? key}) : super(key: key);

  @override
  State<SpanWithWidget> createState() => _SpanWithWidgetState();
}

class _SpanWithWidgetState extends State<SpanWithWidget> {

  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer() ..onTap =() {
    debugPrint("Share Me");
  };

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: Container(
        child: Center(
          child:RichText(
            text: TextSpan(
              text: "Share ",
              style: TextStyle(color: Colors.black,
              fontSize: 30,
              
              ),
              
              children: [ 
                WidgetSpan(child: Icon(Icons.share),
                // usimng alignment we can adjust the icon size based on the font size of the text 
                alignment: PlaceholderAlignment.middle,
                ),
                
              ],
            recognizer: _gestureRecognizer,

            ),

          )
          
          ),),
    );
  }
}