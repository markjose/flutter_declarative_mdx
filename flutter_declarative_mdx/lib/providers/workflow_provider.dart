import 'package:flutter/foundation.dart';
import 'package:flutter_declarative_mdx/declarative_mdx_workflow.dart';
import 'package:flutter_declarative_mdx/model/workflow_page.dart';
import 'package:flutter_declarative_mdx/model/workflow_step.dart';

class WorkflowProvider with ChangeNotifier {
  final DeclarativeMdxWorkflow? workflow;

  int _currentStepIndex = 0;
  int _currentPageIndex = 0;

  WorkflowProvider(this.workflow);

  WorkflowStep get currentStep => evaluateCurrentSteps()[_currentStepIndex];
  WorkflowPage get currentPage => evaluateCurrentPages()[_currentPageIndex];

  List<WorkflowStep> get steps => evaluateCurrentSteps();

  List<WorkflowStep> evaluateCurrentSteps() {
    return workflow == null ? [] : workflow!.steps;
  }

  List<WorkflowPage> evaluateCurrentPages() {
    return currentStep.pages;
  }
}
