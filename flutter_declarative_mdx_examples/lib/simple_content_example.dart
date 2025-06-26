import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';
import 'package:flutter_declarative_mdx/declarative_mdx_configuration.dart';
import 'package:flutter_declarative_mdx/model/workflow_page.dart';

class SimpleContentExample extends StatelessWidget {
  const SimpleContentExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DeclarativeMdx(
      DeclarativeMdxConfiguration(
        page: WorkflowPage(
          content: '''
# This is a simple single content example

**This is not a workflow so not steps or pages**

This page is a simple markdown with a title, subtitle and a table shown below.

| Col 1  | Col 2  |
| ------ | ------ |
| Row 1, Item 1 | Row 1, Item 2 |
| Row 2, Item 1 | Row 2, Item 2 |
| Row 3, Item 1 | Row 3, Item 2 |
''',
        ),
      ),
    );
  }
}
