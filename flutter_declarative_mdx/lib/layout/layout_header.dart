import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/hooks/use_steps.dart';
import 'package:flutter_declarative_mdx/model/workflow_step.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LayoutHeader extends HookWidget {
  final Widget Function(int number, String? label)? buildLabel;
  final Widget Function()? buildDivider;

  const LayoutHeader({super.key, this.buildDivider, this.buildLabel});

  Widget buildDefaultLabel(int number, String? label) {
    final children = <Widget>[Text(number.toString())];

    if (label != null) {
      children.add(Text(label));
    }
    return Row(children: children);
  }

  Widget buildDefaultDivider() {
    return Text(" ... ");
  }

  Iterable<Widget> mapStepLabel(int index, WorkflowStep step, Widget divider) {
    final stepNumber = index + 1;

    final label =
        buildLabel == null
            ? buildDefaultLabel(stepNumber, step.label)
            : buildLabel!(stepNumber, step.label);

    return index > 0 ? [divider, label] : [label];
  }

  @override
  Widget build(BuildContext context) {
    final steps = useSteps();

    final divider =
        buildDivider == null ? buildDefaultDivider() : buildDivider!();

    final children = <Widget>[];
    steps.asMap().entries.forEach((MapEntry<int, WorkflowStep> entry) {
      children.addAll(mapStepLabel(entry.key, entry.value, divider));
    });

    return Row(mainAxisAlignment: MainAxisAlignment.center, children: children);
  }
}
