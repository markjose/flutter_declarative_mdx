import 'package:flutter/material.dart';

abstract class TagHandler {
  String get tag;
  InlineSpan build(Map<String, String> attributes, dynamic model);
}
