import 'package:flutter_declarative_mdx/hooks/use_workflow_provider.dart';
import 'package:flutter_declarative_mdx/model/workflow_page_status.dart';

WorkflowPageStatus usePageStatus() {
  try {
    final workflowProvider = useWorkflowProvider();
    return workflowProvider.currentPageStatus;
  } catch (_) {
    throw Exception(
      "The current workflow page could not be determined, either you have no steps or the current step has no pages. If you use conditional steps or pages then consider if all conditions are false.",
    );
  }
}
