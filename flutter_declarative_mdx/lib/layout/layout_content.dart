import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:markdown_widget/widget/markdown.dart';

class LayoutContent extends HookWidget {
  final String content;

  const LayoutContent(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return MarkdownWidget(data: content);
  }
}
