import 'package:scale_framework/scale_framework.dart';

import 'increment_bloc.dart';

class IncrementModule extends FeatureModule {
  @override
  void setup(PublicRegistry registry) {
    registry.addGlobalStateManager(IncrementStateManager());
  }
}
