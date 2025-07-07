import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/hooks/use_model_state_provider.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/default_tag_handlers/select_tag_handler.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/tag_handler.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/default_tag_handlers/input_tag_handler.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/custom_node.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/default_tag_handlers/submit_model_tag_handler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown_widget/markdown_widget.dart' as md;

class LayoutContent extends HookWidget {
  final String content;

  const LayoutContent(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    final modelProvider = useModelStateProvider();

    final baseTextStyle = GoogleFonts.roboto().copyWith(fontSize: 14.0);
    final fixedTextStyle = GoogleFonts.robotoMono().copyWith(fontSize: 14.0);
    final headingTextStyle = baseTextStyle.copyWith(
      fontWeight: FontWeight.bold,
    );

    final markdownConfiguration = md.MarkdownConfig.defaultConfig.copy(
      configs: [
        md.PConfig(textStyle: baseTextStyle),
        md.H1Config(style: headingTextStyle.copyWith(fontSize: 22)),
        md.H2Config(style: headingTextStyle.copyWith(fontSize: 20)),
        md.H3Config(style: headingTextStyle.copyWith(fontSize: 18)),
        md.H4Config(style: headingTextStyle.copyWith(fontSize: 16)),
        md.H5Config(style: headingTextStyle),
        md.H6Config(style: baseTextStyle.copyWith(fontSize: 12)),
        md.CodeConfig(style: fixedTextStyle),
        md.PreConfig(textStyle: fixedTextStyle),
      ],
    );

    final tagHandlers = <TagHandler>[
      InputTagHandler(),
      SelectTagHandler(),
      SubmitModelTagHandler(),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: md.MarkdownGenerator(
        textGenerator:
            (node, config, visitor) => CustomNode(
              tagHandlers: tagHandlers,
              text: node.textContent,
              config: config,
              modelProvider: modelProvider,
            ),
      ).buildWidgets(content, config: markdownConfiguration),
    );
  }
}
