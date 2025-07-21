import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx_configuration.dart';
import 'package:flutter_declarative_mdx/hooks/use_configure_workflow.dart';
import 'package:flutter_declarative_mdx/layout/layout_workflow.dart';
import 'package:flutter_declarative_mdx/model/workflow.dart';
import 'package:flutter_declarative_mdx/model/workflow_page.dart';
import 'package:flutter_declarative_mdx/model/workflow_step.dart';
import 'package:flutter_declarative_mdx/providers/workflow_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class DeclarativeMdx extends HookWidget {
  final DeclarativeMdxConfiguration configuration;

  final bool isHorizontal;

  const DeclarativeMdx(
    this.configuration, {
    super.key,
    this.isHorizontal = false,
  });

  factory DeclarativeMdx.fromPageContent(String content) => DeclarativeMdx(
    DeclarativeMdxConfiguration(page: WorkflowPage(content: content)),
  );

  factory DeclarativeMdx.fromPageAsset(String assetName) => DeclarativeMdx(
    DeclarativeMdxConfiguration(
      page: WorkflowPage(
        markdownLoader:
            (context) => DefaultAssetBundle.of(
              context,
            ).loadString('assets/data/text.md'),
      ),
    ),
  );

  factory DeclarativeMdx.fromStepList(List<WorkflowStep> steps) =>
      DeclarativeMdx(
        DeclarativeMdxConfiguration(workflow: Workflow(steps: steps)),
      );

  @override
  Widget build(BuildContext context) {
    final workflow = useConfigureWorkflow(configuration);

    final providers = <SingleChildWidget>[];

    if (workflow != null) {
      providers.add(
        ChangeNotifierProvider(create: (_) => WorkflowProvider(workflow)),
      );
    }

    return MultiProvider(
      providers: providers,
      builder: (context, child) => LayoutWorkflow(isHorizontal: isHorizontal),
    );
  }
}
