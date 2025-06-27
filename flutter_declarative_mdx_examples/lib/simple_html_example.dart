import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';

class SimpleHtmlExample extends StatelessWidget {
  const SimpleHtmlExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DeclarativeMdx.render('''
<h1>This is a simple HTML example</h1>

<strong>This is not a workflow so no steps or pages</strong>

This page is simple HTML with a title and subtitle. 

Tables are currently unsupported.
''');
  }
}
