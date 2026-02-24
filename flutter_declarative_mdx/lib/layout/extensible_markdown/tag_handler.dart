import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/providers/model_state_provider.dart';

abstract class TagHandler {
  String get tag;
  InlineSpan build(
    String content,
    Map<String, String> attributes,
    ModelStateProvider? modelProvider,
  );
}
