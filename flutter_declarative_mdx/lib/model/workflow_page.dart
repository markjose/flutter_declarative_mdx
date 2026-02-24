class WorkflowPage {
  final String? content;
  final Uri? contentUri;
  final Future<String> Function()? markdownLoader;

  WorkflowPage({this.content, this.contentUri, this.markdownLoader});
}
