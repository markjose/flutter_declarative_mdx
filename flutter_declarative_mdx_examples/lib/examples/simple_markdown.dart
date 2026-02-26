import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';
import 'package:flutter_declarative_mdx_examples/main_layout.dart';

class SimpleMarkdownExample extends StatelessWidget {
  const SimpleMarkdownExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: DeclarativeMdx.fromPageContent('''
# This is a simple Markdown example

**This is not a workflow so no steps or pages**

This page is a simple markdown with a title, subtitle and a table shown below.

| Col 1  | Col 2  |
| ------ | ------ |
| Row 1, Item 1 | Row 1, Item 2 |
| Row 2, Item 1 | Row 2, Item 2 |
| Row 3, Item 1 | Row 3, Item 2 |
'''),
    );
  }
}
