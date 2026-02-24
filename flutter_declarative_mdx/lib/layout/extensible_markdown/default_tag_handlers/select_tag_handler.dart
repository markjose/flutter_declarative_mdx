import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/tag_handler.dart';
import 'package:flutter_declarative_mdx/providers/model_state_provider.dart';

final _selectTag = 'select';

class SelectTagHandler extends TagHandler {
  @override
  InlineSpan build(
    String content,
    Map<String, String> attributes,
    ModelStateProvider? modelProvider,
  ) {
    final String? label = attributes["label"];
    final String? optionsJson = attributes["options"];
    final String? propertyName = attributes["propertyName"];

    print("SelectTagHandler.build");

    onSelectChanged(dynamic value) {
      modelProvider?.updateModel(propertyName, value);
    }

    final children = <Widget>[];

    if (label != null) {
      children.add(Text(label));
    }

    var options = {};
    try {
      if (optionsJson != null) {
        options = jsonDecode(optionsJson.replaceAll("'", "\""));
      }
    } catch (err) {
      throw Exception(
        "Invalid JSON found in the 'options' attribute of the <select /> tag: $optionsJson.\n\n$err",
      );
    }

    children.add(
      DropdownButton(
        isExpanded: true,
        onChanged: onSelectChanged,
        items:
            options.entries
                .map(
                  (entry) => DropdownMenuItem(
                    value: entry.value,
                    child: Text(entry.key),
                  ),
                )
                .toList(),
      ),
    );

    return WidgetSpan(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  @override
  String get tag => _selectTag;
}
