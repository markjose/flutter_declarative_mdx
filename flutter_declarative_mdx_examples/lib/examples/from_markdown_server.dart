import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';
import 'package:flutter_declarative_mdx_examples/main_layout.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:http/http.dart' as http;

const exampleUrl =
    "https://raw.githubusercontent.com/Cosella-Consulting/flutter_declarative_mdx/refs/heads/main/flutter_declarative_mdx_examples/assets/markdown/server_content.md";

class FromMarkdownServerExample extends HookWidget {
  const FromMarkdownServerExample({super.key});

  @override
  Widget build(BuildContext context) {
    final markdown = useState<String>("");

    useEffect(() {
      Future<void> fetchMarkdown() async {
        final response = await http.get(Uri.parse(exampleUrl));

        if (response.statusCode == 200) {
          markdown.value = response.body;
        } else {
          throw Exception('Failed to load markdown');
        }
      }

      fetchMarkdown();

      return () {};
    }, []);

    return MainLayout(child: DeclarativeMdx.fromPageContent(markdown.value));
  }
}
