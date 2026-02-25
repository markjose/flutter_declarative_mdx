import 'package:flutter/widgets.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/tag_handler.dart';
import 'package:flutter_declarative_mdx/model/workflow_step_info.dart';

class Customizations {
  List<TagHandler> customComponents = [];
  Widget Function(List<WorkflowStepInfo> steps, int currentStep)?
  progressBuilder;

  Customizations({required this.customComponents, this.progressBuilder});
}
