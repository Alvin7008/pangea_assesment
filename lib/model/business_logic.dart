import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusinessLogic {
  final IconData iconName;
  final String logicName;
  final String description;
  final Color colour;

  BusinessLogic({
    required this.colour,
    required this.iconName,
    required this.logicName,
    required this.description,
  });
}
