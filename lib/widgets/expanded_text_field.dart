import 'package:carbon_emission_app/config/theme.dart';
import 'package:flutter/material.dart';

Expanded expandedTextField({
  required double height,
  required String labelText,
  required TextEditingController textController,
  required void Function(String) onChanged,
}) => Expanded(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 8,
    children: [
      Text(labelText, style: label(), textAlign: TextAlign.start),
      SizedBox(
        height: height * 0.06,
        child: TextFormField(
          keyboardType: TextInputType.number,
          onChanged: (value) => onChanged(value),
          controller: textController,
          decoration: InputDecoration(),
        ),
      ),
    ],
  ),
);
