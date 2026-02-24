import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx_examples/basic_components_example.dart';
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
      "Simple single page from markdown",
      (context) => SimpleMarkdownExample(),
    ),
    Example(
      "/basic-components",
      "Basic components example",
      (context) => BasicComponentsExample(),
    ),
    Example(
      "/simple-workflow",
      "Simple paged workflow example",
      (context) => SimpleWorkflowExample(),
    ),
    Example(
      "/from-markdown-asset",
      "Load from asset example",
      (context) => FromMarkdownAssetExample(),
    ),
    Example(
      "/from-markdown-server",
      "Load from markdown server",
      (context) => FromMarkdownServerExample(),
    ),
  ];
}
