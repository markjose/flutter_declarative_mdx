import 'package:flutter_declarative_mdx/providers/customizations_provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

CustomizationsProvider? useCustomizationProvider() {
  final context = useContext();
  try {
    final customizationProvider = context.read<CustomizationsProvider>();
    return useListenable(customizationProvider);
  } catch (_) {}
  return null;
}
