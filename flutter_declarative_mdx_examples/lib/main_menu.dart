import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx_examples/examples.dart';
import 'package:go_router/go_router.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    onPressed(String path) {
      context.go(path);
    }

    return Drawer(
      child: SafeArea(
        child: Column(
          children:
              Examples.all
                  .map(
                    (example) => MenuItemButton(
                      onPressed: () => onPressed(example.path),
                      child: Text(example.name),
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }
}
