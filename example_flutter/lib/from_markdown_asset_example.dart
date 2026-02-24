import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';
import 'package:flutter_declarative_mdx_examples/main_layout.dart';

class FromMarkdownAssetExample extends StatelessWidget {
  const FromMarkdownAssetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: DeclarativeMdx.fromPageAsset('assets/markdown/simple.md'),
    );
  }
}
