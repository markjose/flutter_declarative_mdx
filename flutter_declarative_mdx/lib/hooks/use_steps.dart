import 'package:flutter_declarative_mdx/hooks/use_workflow_provider.dart';
import 'package:flutter_declarative_mdx/model/workflow_step.dart';

List<WorkflowStep> useSteps() {
  final workflowProvider = useWorkflowProvider();
  return workflowProvider.steps;
}
