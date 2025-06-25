import 'package:flutter_declarative_mdx/declarative_mdx_workflow.dart';

class DeclarativeMdxConfiguration {
  final DeclarativeMdxWorkflow? workflow;
  final Map<String, dynamic>? workflowJson;
  final String? workflowJsonString;
  final String? workflowUrl;

  DeclarativeMdxConfiguration({
    this.workflow,
    this.workflowJson,
    this.workflowJsonString,
    this.workflowUrl,
  });
}
