import 'package:carbon_emission_app/data/electricity/country_type.dart';
import 'package:carbon_emission_app/data/electricity/electricity_unit.dart';

class ElectricityRequest {
  final Country countryName;
  final double electricityValue;
  final ElectricityUnit electricityUnit;

  ElectricityRequest({
    required this.countryName,
    required this.electricityValue,
    required this.electricityUnit,
  });

  ElectricityRequest copyWith({
    Country? countryName,
    double? electricityValue,
    ElectricityUnit? electricityUnit,
  }) {
    return ElectricityRequest(
      countryName: countryName ?? this.countryName,
      electricityValue: electricityValue ?? this.electricityValue,
      electricityUnit: electricityUnit ?? this.electricityUnit,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "country_name": countryName.value,
      "electricity_value": electricityValue,
      "electricity_unit": electricityUnit.value,
    };
  }
}
