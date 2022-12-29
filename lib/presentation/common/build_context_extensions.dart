/// Defines [BuildContext] Extensions
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Shortcuts for reading [AppLocalizations] properties
extension LocalizedBuildContext on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this);
}
