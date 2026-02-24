import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';
import 'package:flutter_declarative_mdx/model/customizations.dart';
import 'package:flutter_declarative_mdx_examples/custom_handlers/callout_tag_handler.dart';
import 'package:flutter_declarative_mdx_examples/main_layout.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomComponentsExample extends HookWidget {
  const CustomComponentsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: DeclarativeMdx.fromPageAsset(
        'assets/markdown/custom-components.md',
        customizations: Customizations(customComponents: [CalloutTagHandler()]),
      ),
    );
  }
}
