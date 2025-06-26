import 'package:flutter/material.dart';

class WorkflowAction {
  final String label;
  final VoidCallback onTap;

  WorkflowAction({required this.label, required this.onTap});
}
