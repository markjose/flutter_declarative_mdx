# flutter_declarative_mdx_extensions

**Common, production-ready MDX components for use with `flutter_declarative_mdx`.**

This package provides a collection of reusable TagHandler implementations for frequently used input and validation scenarios — particularly for UK financial and personal data.

It is designed to be used alongside flutter_declarative_mdx and offers quick, drop-in components that can be registered via Customizations.

## What This Package Provides

The extensions package contains ready-made MDX components organised by domain.

- Financial Components (`/financials`)
  - SortCode
  - AccountNumber
- Personal Components (`/personal`)
  - NiNumber

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_declarative_mdx: ^latest
  flutter_declarative_mdx_extensions: ^latest
```

## Usage

Import the extension package:

```dart
import 'package:flutter_declarative_mdx_extensions/flutter_declarative_mdx_extensions.dart';
```

Register the provided components via Customizations:

```dart
DeclarativeMdx.fromPageContent(
  mdxContent,
  customizations: Customizations(
    customComponents: [
      SortCodeTagHandler(),
      AccountNumberTagHandler(),
      NINumberTagHandler(),
    ],
  ),
);
```

Then in your markdown:

```markdown
Sort Code
<SortCode name="sortCode" label="Sort code" required="true">
</SortCode>
Account Number
<AccountNumber name="accountNumber" label="Account number" required="true">
</AccountNumber>
National Insurance Number
<NINumber name="niNumber" label="National Insurance number" required="true">
</NINumber>
```

## Design Principles

This package aims to:
- Provide sensible defaults for common UK use cases
- Keep implementations lightweight
- Avoid opinionated styling
- Integrate cleanly with ModelStateProvider
- Remain extensible and composable

It is not a full form framework, it simply provides reusable building blocks.

## Model Binding

All components:
- Store raw values in the model (digits-only where appropriate)
- Perform client-side validation
- Surface errors inline
- Remain compatible with server-driven workflows

## When to Use This Package

Use this extensions package when:
- You are building UK financial flows
- You need quick, consistent validation components
- You want to reduce boilerplate TagHandler code
- You are prototyping workflows rapidly

If you require deeper domain validation (e.g. modulus checking for bank accounts), you may extend these handlers.

## Status

This package is evolving alongside flutter_declarative_mdx. APIs may expand as additional common components are identified.

Contributions are welcome.

## Related

[flutter_declarative_mdx — core rendering library](https://pub.dev/packages/flutter_declarative_mdx)