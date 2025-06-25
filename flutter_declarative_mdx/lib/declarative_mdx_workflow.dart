import 'package:flutter_declarative_mdx/utilities/map_dynamic_to_list_of_typed_objects.dart';
import 'package:flutter_declarative_mdx/model/workflow_step.dart';

class DeclarativeMdxWorkflow {
  final List<WorkflowStep> steps;

  DeclarativeMdxWorkflow({required this.steps});

  static DeclarativeMdxWorkflow? fromJson(Map<String, dynamic> workflowJson) =>
      DeclarativeMdxWorkflow(
        steps: mapDynamicToListOfTypedObjects(workflowJson["steps"]),
      );
}
