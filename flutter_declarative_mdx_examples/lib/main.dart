import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx_examples/examples.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MainApp());
}

final _router = GoRouter(
  initialLocation: Examples.all[0].path,
  routes:
      Examples.all
          .map(
            (example) => GoRoute(
              path: example.path,
              builder: (context, state) => example.builder(context),
            ),
          )
          .toList(),
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Flutter Declarative MDX";
    final Map<String, Widget Function(BuildContext)> routes = {};

    for (var example in Examples.all) {
      routes[example.path] = example.builder;
    }

    return MaterialApp.router(title: appTitle, routerConfig: _router);
  }
}
