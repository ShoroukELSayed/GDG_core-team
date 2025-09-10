import 'package:flutter/material.dart';

class ProfileOptionModel {
  final Widget icon;
  final String name;
  final bool isSwitch;
  final VoidCallback? onTap;

  const ProfileOptionModel({
    required this.icon,
    required this.name,
    this.isSwitch = false,
    this.onTap,
  });
}
