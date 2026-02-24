import 'package:flutter/foundation.dart';
import 'package:flutter_declarative_mdx/layout/extensible_markdown/tag_handler.dart';
import 'package:flutter_declarative_mdx/model/customizations.dart';

class CustomizationsProvider with ChangeNotifier {
  final Customizations customizations;

  CustomizationsProvider(this.customizations);

  List<TagHandler> get componentHandlers => customizations.customComponents;

  void addCustomComponents(List<TagHandler> components) {
    customizations.customComponents = [
      ...customizations.customComponents,
      ...components,
    ];
    notifyListeners();
  }
}
