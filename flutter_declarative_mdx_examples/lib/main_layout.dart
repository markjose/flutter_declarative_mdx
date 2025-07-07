import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';
import 'package:flutter_declarative_mdx_examples/main_menu.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainLayout extends HookWidget {
  final Widget? child;

  const MainLayout({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Flutter Declarative MDX";
    final GlobalKey<ScaffoldState> key = GlobalKey();
    final showCode = useState(false);
    final model = DeclarativeMdx.useModel({});

    final children = <Widget>[
      Expanded(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(margin: EdgeInsets.all(20), child: child),
            ),
          ],
        ),
      ),
    ];

    if (showCode.value) {
      children.add(
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 300,
          color: Colors.blue.shade100,
          child: DeclarativeMdx.fromPageContent('''
**Model State**
```${json.encode(model)}```
'''),
        ),
      );
    }

    return Scaffold(
      key: key,
      appBar: AppBar(
        title: const Text(appTitle),
        leading: IconButton(
          onPressed: () {
            key.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showCode.value = !showCode.value;
            },
            icon: Icon(Icons.code),
          ),
        ],
      ),
      drawer: MainMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }
}
