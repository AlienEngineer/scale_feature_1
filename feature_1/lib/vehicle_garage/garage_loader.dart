import 'package:scale_framework/scale_framework.dart';

class GarageLoader extends StateManager<List<Vehicle>> {
  GarageLoader() : super([]) {
    load();
  }

  void load() {
    Future.delayed(Duration(seconds: 0)).then(
      (_) => pushNewState((_) => [
            Vehicle(
                vin: 'V9',
                brand: 'some brand 9',
                capabilities: [Capability(name: 'Capability 9')]),
            Vehicle(
                vin: 'V8',
                brand: 'some brand 8',
                capabilities: [Capability(name: 'Capability 8')]),
            Vehicle(
                vin: 'V7',
                brand: 'some brand 7',
                capabilities: [Capability(name: 'Capability 7')]),
            Vehicle(
                vin: 'V6',
                brand: 'some brand 6',
                capabilities: [Capability(name: 'Capability 6')])
          ]),
    );
    Future.delayed(Duration(seconds: 5)).then(
      (_) => pushNewState((_) => [
            Vehicle(
                vin: 'VX59',
                brand: 'some brand 59',
                capabilities: [Capability(name: 'Capability 59')]),
            Vehicle(
                vin: 'VX58',
                brand: 'some brand 58',
                capabilities: [Capability(name: 'Capability 58')]),
            Vehicle(
                vin: 'VX57',
                brand: 'some brand 57',
                capabilities: [Capability(name: 'Capability 57')]),
            Vehicle(
                vin: 'VX56',
                brand: 'some brand 56',
                capabilities: [Capability(name: 'Capability 56')])
          ]),
    );
  }
}

class Vehicle {
  final String vin;
  final String brand;
  final List<Capability> capabilities;
  // All the vehicle info

  Vehicle({
    required this.vin,
    required this.brand,
    this.capabilities = const [],
  });
}

class Capability {
  final String name;
  Capability({required this.name});
}
