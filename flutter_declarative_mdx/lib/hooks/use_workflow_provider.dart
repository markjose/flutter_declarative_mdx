import 'package:flutter_declarative_mdx/providers/workflow_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

WorkflowProvider useWorkflowProvider() {
  final context = useContext();
  final workflowProvider = context.read<WorkflowProvider>();
  return useListenable(workflowProvider);
}
