import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx_configuration.dart';
import 'package:flutter_declarative_mdx/hooks/use_workflow.dart';
import 'package:flutter_declarative_mdx/layout/layout_actions.dart';
import 'package:flutter_declarative_mdx/layout/layout_header.dart';
import 'package:flutter_declarative_mdx/layout/layout_page.dart';
import 'package:flutter_declarative_mdx/providers/workflow_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

class DeclarativeMdx extends HookWidget {
  final DeclarativeMdxConfiguration configuration;

  final bool isHorizontal;

  const DeclarativeMdx(
    this.configuration, {
    super.key,
    this.isHorizontal = false,
  });

  @override
  Widget build(BuildContext context) {
    final workflow = useWorkflow(configuration);

    final children = [LayoutHeader(), LayoutPage(), LayoutActions()];

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WorkflowProvider(workflow)),
      ],
      child:
          isHorizontal
              ? Row(children: children)
              : Column(mainAxisSize: MainAxisSize.max, children: children),
    );
  }
}
