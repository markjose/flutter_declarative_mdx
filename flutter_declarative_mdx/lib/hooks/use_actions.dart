import 'package:flutter_declarative_mdx/hooks/use_workflow_provider.dart';
import 'package:flutter_declarative_mdx/model/workflow_action.dart';

List<WorkflowAction> useActions() {
  final workflowProvider = useWorkflowProvider();
  return workflowProvider.currentActions;
}
