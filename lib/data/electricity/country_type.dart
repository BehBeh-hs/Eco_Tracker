import 'package:carbon_emission_app/data/has_value.dart';

class Country implements HasValue {
  @override
  final String value;

  const Country._(this.value);

  static const Country my = Country._("Malaysia");
  static const Country sg = Country._("Singapore");
  static const Country us = Country._("USA");
  static const Country uk = Country._("UK");
  static const Country cn = Country._("China");
  static const Country th = Country._("Thailand");
  static const Country jp = Country._("Japan");
  static const Country kr = Country._("Korea");

  static const List<Country> values = [my, sg, us, uk, cn, th, jp, kr];
}
