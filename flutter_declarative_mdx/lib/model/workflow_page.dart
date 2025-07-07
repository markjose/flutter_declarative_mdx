import 'package:flutter/material.dart';

class WorkflowPage {
  final String? content;
  final Future<String> Function(BuildContext context)? markdownLoader;

  WorkflowPage({this.content, this.markdownLoader});
}
