import 'package:flutter/material.dart';
import 'package:flutter_declarative_mdx/declarative_mdx.dart';
import 'package:flutter_declarative_mdx/model/customizations.dart';
import 'package:flutter_declarative_mdx/model/workflow.dart';
import 'package:flutter_declarative_mdx/model/workflow_page.dart';
import 'package:flutter_declarative_mdx/model/workflow_step.dart';
import 'package:flutter_declarative_mdx_examples/examples/onboarding/custom_step_progress.dart';
import 'package:flutter_declarative_mdx_examples/main_layout.dart';

class OnboardingWorkflowExample extends StatelessWidget {
  const OnboardingWorkflowExample({super.key});

  @override
  Widget build(BuildContext context) {
    final workflow = Workflow(
      steps: [
        WorkflowStep(
          label: "Your Details",
          pages: [
            WorkflowPage(content: 'Basic screens'),
            WorkflowPage(content: 'National Insurance Number'),
            WorkflowPage(content: 'Nationality details'),
            WorkflowPage(content: 'Address'),
          ],
        ),
        WorkflowStep(
          label: "Bank Details",
          pages: [WorkflowPage(content: 'Step 2')],
        ),
        WorkflowStep(
          label: "Security",
          pages: [WorkflowPage(content: 'Step 3')],
        ),
        WorkflowStep(
          label: "Confirmation",
          pages: [WorkflowPage(content: 'Step 4')],
        ),
      ],
    );

    final customizations = Customizations(
      customComponents: [],
      headerBuilder: (workflowStatus) => CustomStepProgress(workflowStatus),
    );

    return MainLayout(
      child: DeclarativeMdx.fromWorkflow(
        workflow,
        customizations: customizations,
      ),
    );
  }
}
