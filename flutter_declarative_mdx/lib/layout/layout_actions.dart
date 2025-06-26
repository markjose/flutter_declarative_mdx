import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/hooks/use_actions.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LayoutActions extends HookWidget {
  const LayoutActions({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = useActions();

    return Row(
      children:
          actions
              .map(
                (action) => TextButton(
                  onPressed: action.onTap,
                  child: Text(action.label),
                ),
              )
              .toList(),
    );
  }
}
