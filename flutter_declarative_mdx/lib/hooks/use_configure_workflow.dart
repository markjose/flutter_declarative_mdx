import 'dart:convert';

import 'package:flutter_declarative_mdx/declarative_mdx_configuration.dart';
import 'package:flutter_declarative_mdx/model/workflow.dart';
import 'package:flutter_declarative_mdx/model/workflow_step.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

Workflow? useConfigureWorkflow(DeclarativeMdxConfiguration config) {
  final workflow = useState<Workflow?>(null);

  useEffect(() {
    if (config.page != null) {
      workflow.value = Workflow(
        steps: [
          WorkflowStep(pages: [config.page!]),
        ],
      );
    } else if (config.workflow != null) {
      workflow.value = config.workflow;
    } else if (config.workflowJson != null) {
      workflow.value = Workflow.fromJson(config.workflowJson!);
    } else if (config.workflowJsonString != null) {
      final workflowJson = json.decode(config.workflowJsonString!);
      workflow.value = Workflow.fromJson(workflowJson);
    } else if (config.workflowUrl != null) {
      throw Exception(
        "Getting a workflow from a URL is currently unsupported.",
      );
    } else {
      throw Exception("No workflow provided in the configuration passed.");
    }

    return null;
  }, []);

  return workflow.value;
}
