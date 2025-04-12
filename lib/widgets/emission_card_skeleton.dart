import 'package:carbon_emission_app/config/theme.dart';
import 'package:flutter/material.dart';

Widget emissionCardSkeleton({required double height, required double width}) =>
    Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      height: height * 0.32,
      width: width,
      child: CircularProgressIndicator(),
    );
