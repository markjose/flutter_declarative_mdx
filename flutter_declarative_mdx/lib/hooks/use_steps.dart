import 'package:flutter_declarative_mdx/model/workflow_step.dart';
import 'package:flutter_declarative_mdx/providers/workflow_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

List<WorkflowStep> useSteps() {
  final context = useContext();
  final workflow = context.read<WorkflowProvider>();

  return workflow.steps;
}
