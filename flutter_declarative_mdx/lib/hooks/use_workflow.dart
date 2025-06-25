import 'dart:convert';

import 'package:flutter_declarative_mdx/declarative_mdx_configuration.dart';
import 'package:flutter_declarative_mdx/declarative_mdx_workflow.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

DeclarativeMdxWorkflow? useWorkflow(DeclarativeMdxConfiguration config) {
  final workflow = useState<DeclarativeMdxWorkflow?>(null);

  useEffect(() {
    if (config.workflow != null) {
      workflow.value = config.workflow;
    } else if (config.workflowJson != null) {
      workflow.value = DeclarativeMdxWorkflow.fromJson(config.workflowJson!);
    } else if (config.workflowJsonString != null) {
      final workflowJson = json.decode(config.workflowJsonString!);
      workflow.value = DeclarativeMdxWorkflow.fromJson(workflowJson);
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
