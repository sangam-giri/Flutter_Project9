import 'package:flutter/material.dart';
import 'package:project9/widget_span.dart';
import 'home_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: HomePage(), //This one consists of TextSpan
    home: SpanWithWidget(), // This one consists of the Widget span
  ));
}