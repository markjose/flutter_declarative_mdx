import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx_examples/simple_content_example.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(20),
            child: SimpleContentExample(),
          ),
        ),
      ),
    );
  }
}
