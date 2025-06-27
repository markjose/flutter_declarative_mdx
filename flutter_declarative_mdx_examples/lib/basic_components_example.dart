import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';
import 'package:flutter_declarative_mdx/declarative_mdx_configuration.dart';
import 'package:flutter_declarative_mdx/model/workflow_page.dart';

class BasicComponentsExample extends StatelessWidget {
  const BasicComponentsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DeclarativeMdx(
      DeclarativeMdxConfiguration(
        page: WorkflowPage(
          content: '''
# This is a basic components example
The flutter_declarative_mdx package supports input as well as formatted MDX documents. The output of these components can be validated locally using some common validations or validated remotely via API calls.

#### Plain Text Input
<input type="text" label="Input Label" propertyName="example_input_1" />

```
<input
  type="text" 
  label="Input Label" 
  propertyName="example_input_1" 
/>
```

#### Model submission
<submit_model label="Submit Model" url="https://my.api/submissions" />

```
<submit_model
  label="Submit Model" 
   url="https://my.api/submissions" 
/>
```
''',
        ),
      ),
    );
  }
}
