import 'package:flutter/material.dart';

class Transaction {
  final String title;
  final String subtitle;
  final String value;
  final Color leadingBackgroundColor;
  final Color leadingIconColor;
  final IconData icon;

  Transaction({
    required this.title,
    required this.subtitle,
    required this.value,
    required this.leadingBackgroundColor,
    required this.leadingIconColor,
    required this.icon,
  });
}
