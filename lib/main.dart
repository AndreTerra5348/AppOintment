/// Defines the entry point of the application
import 'package:appointment/presentation/app_ointment.dart';
import 'package:appointment/presentation/config/di_config.dart';
import 'package:flutter/material.dart';

/// Configures [services] and runs [AppOintment]
void main() {
  servicesConfiguration();
  runApp(AppOintment());
}
