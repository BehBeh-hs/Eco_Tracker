import 'package:flutter/material.dart';
import 'package:carbon_emission_app/config/theme.dart';

Container emissionCard({
  required double height,
  required double width,
  required double co2eGm,
  required double co2eLb,
  required double co2eKg,
  required double co2eMt,
  required IconData icon,
  required Color iconColor,
}) => Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
  height: height * 0.32,
  width: width,
  child: Column(
    children: [
      Icon(icon, color: iconColor, size: 82),
      Text(
        co2eGm.toString(),
        style: displayLarge(),
        overflow: TextOverflow.ellipsis,
      ),
      Text("Co2e/gm", style: normal(), overflow: TextOverflow.ellipsis),
      SizedBox(height: height * 0.04),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Column(
              children: [
                Text(
                  co2eLb.toString(),
                  style: displayMedium(bold: true),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Co2e/lb",
                  style: label(),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Flexible(
            child: Column(
              children: [
                Text(
                  co2eKg.toString(),
                  style: displayMedium(bold: true),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Co2e/kg",
                  style: label(),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Flexible(
            child: Column(
              children: [
                Text(
                  co2eMt.toString(),
                  style: displayMedium(bold: true),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Co2e/mt",
                  style: label(),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  ),
);
