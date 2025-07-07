import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/hooks/use_workflow_provider.dart';
import 'package:flutter_declarative_mdx/layout/layout_actions.dart';
import 'package:flutter_declarative_mdx/layout/layout_header.dart';
import 'package:flutter_declarative_mdx/layout/layout_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LayoutWorkflow extends HookWidget {
  final bool isHorizontal;

  const LayoutWorkflow({super.key, this.isHorizontal = false});

  @override
  Widget build(BuildContext context) {
    final workflowProvider = useWorkflowProvider();

    final children = <Widget>[];

    if (workflowProvider.steps.length > 1) {
      children.add(LayoutHeader());
    }
    children.add(LayoutPage());
    if (workflowProvider.steps.length > 1) {
      children.add(LayoutActions());
    }

    return isHorizontal
        ? Row(children: children)
        : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: children,
        );
  }
}
