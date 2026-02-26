import 'package:flutter/widgets.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/tag_handler.dart';
import 'package:flutter_declarative_mdx/model/customizations.dart';
import 'package:flutter_declarative_mdx/model/workflow_status.dart';

class CustomizationsProvider with ChangeNotifier {
  final Customizations customizations;

  CustomizationsProvider(this.customizations);

  List<TagHandler> get componentHandlers => customizations.customComponents;
  Widget Function(WorkflowStatus status)? get footerBuilder =>
      customizations.footerBuilder;
  Widget Function(WorkflowStatus status)? get headerBuilder =>
      customizations.headerBuilder;

  void addCustomComponents(List<TagHandler> components) {
    customizations.customComponents = [
      ...customizations.customComponents,
      ...components,
    ];
    notifyListeners();
  }
}
