import 'package:flutter/foundation.dart';

class ModelStateProvider with ChangeNotifier {
  final dynamic _rawModel = {};

  ModelStateProvider();

  dynamic get model => _rawModel;

  void updateModel(String? propertyName, String value) {
    _rawModel[propertyName] = value;
    print(_rawModel);
    notifyListeners();
  }
}
