import 'package:feature_1/vehicle_garage/garage_loader.dart';
import 'package:feature_1/vehicle_garage/vehicle_selector/vehicle_selected.dart';
import 'package:scale_framework/scale_framework.dart';

class GarageModule extends FeatureModule {
  @override
  void setup(PublicRegistry registry) {
    registry.addGlobalStateManager((_) => GarageLoader());
    registry.addGlobalStateManager((_) => VehicleSelectionStateManager());
  }
}
