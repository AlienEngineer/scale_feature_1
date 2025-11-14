import 'package:scale_framework/scale_framework.dart';

import 'increment_state_manager.dart';

class IncrementModule extends FeatureModule {
  @override
  void setup(PublicRegistry registry) {
    registry.addGlobalStateManager(IncrementStateManager());
  }
}
