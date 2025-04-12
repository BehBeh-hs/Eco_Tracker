import 'package:carbon_emission_app/data/has_value.dart';

class ElectricityUnit implements HasValue {
  @override
  final String value;

  const ElectricityUnit._(this.value);

  static const kwh = ElectricityUnit._("kWh");
  static const mwh = ElectricityUnit._("MWh");

  static const List<ElectricityUnit> values = [kwh, mwh];
}
