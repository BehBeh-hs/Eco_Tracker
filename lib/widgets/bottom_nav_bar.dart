import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carbon_emission_app/config/theme.dart';

BottomNavigationBar bottomNavigationBar({
  required int index,
  required void Function(int) onTap,
}) => BottomNavigationBar(
  type: BottomNavigationBarType.shifting,
  items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      backgroundColor: secondaryGreen,
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.car),
      label: 'Transportation',
      backgroundColor: primaryBlue,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.bolt),
      label: 'Electricity',
      backgroundColor: primaryYellow,
    ),
  ],
  currentIndex: index,
  onTap: onTap,
  selectedLabelStyle: label(bold: true),
);
