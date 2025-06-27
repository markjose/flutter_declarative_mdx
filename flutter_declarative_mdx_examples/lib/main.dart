import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx_examples/basic_components_example.dart';

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
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: BasicComponentsExample(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
