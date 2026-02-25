import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/model/workflow_step_info.dart';

class CustomStepProgress extends StatelessWidget {
  final int currentStep;
  final List<WorkflowStepInfo> steps;

  const CustomStepProgress(this.steps, {super.key, this.currentStep = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: steps.map((step) => Text(step.label ?? "N/A")).toList(),
    );
  }
}
