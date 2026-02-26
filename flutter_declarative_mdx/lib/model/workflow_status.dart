import 'package:flutter_declarative_mdx/model/workflow_action.dart';
import 'package:flutter_declarative_mdx/model/workflow_step_info.dart';

class WorkflowStatus {
  final List<WorkflowAction> actions;
  final int currentStep;
  final List<WorkflowStepInfo> steps;

  WorkflowStatus({
    required this.actions,
    required this.currentStep,
    required this.steps,
  });
}
