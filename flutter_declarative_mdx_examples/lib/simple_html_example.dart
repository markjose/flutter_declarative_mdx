import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';
import 'package:flutter_declarative_mdx/declarative_mdx_configuration.dart';
import 'package:flutter_declarative_mdx/model/workflow_page.dart';

class SimpleHtmlExample extends StatelessWidget {
  const SimpleHtmlExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DeclarativeMdx(
      DeclarativeMdxConfiguration(
        page: WorkflowPage(
          content: '''
<h1>This is a simple HTML example</h1>

<strong>This is not a workflow so no steps or pages</strong>

This page is simple HTML with a title and subtitle. 

Tables are currently unsupported.
''',
        ),
      ),
    );
  }
}
