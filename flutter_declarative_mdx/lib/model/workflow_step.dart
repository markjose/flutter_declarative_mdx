import 'package:flutter_declarative_mdx/model/workflow_page.dart';

class WorkflowStep {
  final String? label;
  final List<WorkflowPage> pages;

  WorkflowStep({required this.pages, this.label});
}
