import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/model/workflow_status.dart';

class CustomStepProgress extends StatelessWidget {
  final WorkflowStatus workflowStatus;

  const CustomStepProgress(this.workflowStatus, {super.key});

  @override
  Widget build(BuildContext context) {
    mapEntryToProgressLabel(entry) => Text(
      entry.value.label ?? "N/A",
      style: TextStyle(
        fontWeight:
            workflowStatus.pageStatus.currentStep == entry.key
                ? FontWeight.bold
                : FontWeight.normal,
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
          workflowStatus.steps
              .asMap()
              .entries
              .map(mapEntryToProgressLabel)
              .toList(),
    );
  }
}
