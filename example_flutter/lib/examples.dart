import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx_examples/basic_components_example.dart';
import 'package:flutter_declarative_mdx_examples/custom_components_example.dart';
import 'package:flutter_declarative_mdx_examples/from_markdown_asset_example.dart';
import 'package:flutter_declarative_mdx_examples/from_markdown_server_example.dart';
import 'package:flutter_declarative_mdx_examples/simple_markdown_example.dart';
import 'package:flutter_declarative_mdx_examples/simple_workflow_example.dart';

class Example {
  final String path;
  final String name;
  final Widget Function(BuildContext) builder;

  const Example(this.path, this.name, this.builder);
}

class Examples {
  static List<Example> get all => [
    Example(
      "/simple-markdown",
      "A simple MDX page",
      (context) => SimpleMarkdownExample(),
    ),
    Example(
      "/simple-workflow",
      "A simple MDX workflow",
      (context) => SimpleWorkflowExample(),
    ),
    Example(
      "/from-markdown-asset",
      "MDX loaded from Assets",
      (context) => FromMarkdownAssetExample(),
    ),
    Example(
      "/from-markdown-server",
      "MDX loaded over HTTP",
      (context) => FromMarkdownServerExample(),
    ),
    Example(
      "/basic-components",
      "Built in components",
      (context) => BasicComponentsExample(),
    ),
    Example(
      "/custom-components",
      "Custom components",
      (context) => CustomComponentsExample(),
    ),
  ];
}
