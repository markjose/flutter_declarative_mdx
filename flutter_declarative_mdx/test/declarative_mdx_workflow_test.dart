import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_declarative_mdx/model/workflow.dart';

void main() {
  test('asserts the current page index of a new workflow is 0', () {
    final workflow = Workflow(steps: []);
    expect(workflow, null);
  });
}
