import 'package:flutter_declarative_mdx/model/workflow.dart';
import 'package:flutter_declarative_mdx/model/workflow_page.dart';

class DeclarativeMdxConfiguration {
  final WorkflowPage? page;
  final Workflow? workflow;
  final Map<String, dynamic>? workflowJson;
  final String? workflowJsonString;
  final String? workflowUrl;

  DeclarativeMdxConfiguration({
    this.page,
    this.workflow,
    this.workflowJson,
    this.workflowJsonString,
    this.workflowUrl,
  });
}
