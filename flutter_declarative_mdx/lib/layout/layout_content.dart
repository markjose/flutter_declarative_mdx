import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/tag_handler.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/default_tag_handlers/input_tag_handler.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/custom_node.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/default_tag_handlers/submit_model_tag_handler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:markdown_widget/markdown_widget.dart' as md;

class LayoutContent extends HookWidget {
  final String content;

  const LayoutContent(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    final markdownConfiguration = md.MarkdownConfig.defaultConfig.copy(
      configs: [],
    );

    final tagHandlers = <TagHandler>[
      InputTagHandler(),
      SubmitModelTagHandler(),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: md.MarkdownGenerator(
        textGenerator:
            (node, config, visitor) =>
                CustomNode(tagHandlers, node.textContent, config, visitor),
      ).buildWidgets(content, config: markdownConfiguration),
    );
  }
}
