class WorkflowPage {
  final String? content;
  final Future<String> Function()? contentLoader;

  WorkflowPage({this.content, this.contentLoader});
}
