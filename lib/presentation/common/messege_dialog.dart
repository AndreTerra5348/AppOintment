/// Defines a dialog box
import 'package:flutter/material.dart';

/// Displays a dialog with [icon] and [text]
Future<T?> show<T>({
  required BuildContext context,
  required Icon icon,
  required Text text,
}) =>
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.2),
      builder: (_) => Center(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              const SizedBox(height: 8),
              text,
            ],
          ),
        ),
      ),
    );
