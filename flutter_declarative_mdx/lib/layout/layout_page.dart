import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/hooks/use_current_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:markdown_widget/widget/markdown.dart';

class LayoutPage extends HookWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final page = useCurrentPage();

    return MarkdownWidget(data: page.content);
  }
}
