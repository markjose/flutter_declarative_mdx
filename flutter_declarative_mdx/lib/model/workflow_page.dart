import 'package:flutter/material.dart';

class WorkflowPage {
  final String? content;
  final Uri? contentUri;
  final Future<String> Function(BuildContext context)? markdownLoader;

  WorkflowPage({this.content, this.contentUri, this.markdownLoader});
}
