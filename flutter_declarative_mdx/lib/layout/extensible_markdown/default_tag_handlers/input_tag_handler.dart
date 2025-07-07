import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/tag_handler.dart';
import 'package:flutter_declarative_mdx/providers/model_state_provider.dart';

final _inputTag = 'input';

class InputType {
  static final text = "text";
}

class InputTagHandler extends TagHandler {
  @override
  InlineSpan build(
    Map<String, String> attributes,
    ModelStateProvider? modelProvider,
  ) {
    final String type = attributes["type"] ?? InputType.text;
    final String? label = attributes["label"];
    final String? propertyName = attributes["propertyName"];

    onInputChanged(String value) {
      modelProvider?.updateModel(propertyName, value);
    }

    final children = <Widget>[];

    if (label != null) {
      children.add(Text(label));
    }
    if (type == InputType.text) {
      children.add(TextField(onChanged: onInputChanged));
    }

    return WidgetSpan(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  @override
  String get tag => _inputTag;
}
