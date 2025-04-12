import 'package:carbon_emission_app/config/theme.dart';
import 'package:flutter/material.dart';

Widget calculatorButton({
  required double width,
  required double height,
  required Color btnColor,
  required void Function() onTap,
}) => GestureDetector(
  onTap: onTap,
  child: Container(
    margin: EdgeInsets.only(top: 8),
    alignment: Alignment.center,
    width: width,
    height: height * 0.06,
    decoration: BoxDecoration(
      color: btnColor,
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
    child: Text("Calculate", style: normal(bold: true, color: white)),
  ),
);
