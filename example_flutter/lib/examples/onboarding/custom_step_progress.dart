import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/model/workflow_status.dart';

class CustomStepProgress extends StatelessWidget {
  final WorkflowStatus workflowStatus;

  const CustomStepProgress(this.workflowStatus, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
          workflowStatus.steps
              .map((step) => Text(step.label ?? "N/A"))
              .toList(),
    );
  }
}
