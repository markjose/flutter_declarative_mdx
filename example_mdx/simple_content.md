# flutter_declarative_mdx

> Declarative, server-driven UI for Flutter using extensible Markdown.

This page is **being delivered from a server** and rendered inside a Flutter application as native widgets.

There is no WebView.  
There is no HTML rendering layer.  
This content is parsed and converted directly into Flutter UI.

---

## What is flutter_declarative_mdx?

`flutter_declarative_mdx` is a library that allows structured Markdown content to define application UI.

Instead of hardcoding every screen in Dart, you can:

1. Define content and structure using Markdown
2. Deliver that content from a backend service
3. Render it natively inside your Flutter app

This creates a clear separation between:

- **Content and flow (server)**
- **Rendering and interaction (client)**

---

## Why server-driven UI?

Modern applications often need to:

- Update content without app releases  
- Experiment with layouts  
- Modify workflows quickly  
- A/B test journeys  
- Roll out content changes safely  

By delivering Markdown from the server, the UI becomes:

- Flexible  
- Iterative  
- Easier to evolve  

All while maintaining native performance and design consistency.

---

## How this page works

This file is:

- Hosted remotely  
- Fetched by the app  
- Parsed as Markdown  
- Converted into Flutter widgets  
- Displayed as part of the app's UI  

For example:

- Headings become native `Text` widgets  
- Lists become structured Flutter layouts  
- Code blocks become styled text  
- Links are interactive  

Even this list is rendered natively:

- Fast  
- Theme-aware  
- Accessible  

---

## Markdown Features Demonstrated

### Text formatting

You can use **bold**, *italic*, or `inline code` formatting.

You can also structure content using headings:

### Like this one

Or highlight important information:

> This entire document is server-delivered and rendered natively inside Flutter.

---

## Lists

### Unordered
- Delivered from the server
- Parsed locally
- Rendered natively
- Styled with your app theme

### Ordered
1. Write Markdown
2. Store or serve it
3. Render it with flutter_declarative_mdx

---

## Code Example

```dart
Future<String> fetchContent() async {
  final response = await http.get(
    Uri.parse("https://example.com/content.md"),
  );

  return response.body;
}
```