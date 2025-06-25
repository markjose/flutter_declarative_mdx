import 'package:flutter_declarative_mdx/model/workflow_page.dart';
import 'package:flutter_declarative_mdx/providers/workflow_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

WorkflowPage useCurrentPage() {
  final context = useContext();
  final workflow = context.read<WorkflowProvider>();

  try {
    return workflow.currentPage;
  } catch (_) {
    throw Exception(
      "The current workflow page could not be determined, either you have no steps or the current step has no pages. If you use conditional steps or pages then consider if all conditions are false.",
    );
  }
}
