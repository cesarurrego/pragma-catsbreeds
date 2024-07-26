import 'package:flutter/material.dart';
import 'package:pragma_test/app/res/strings.dart';
import 'package:pragma_test/app/theme/app_spacing.dart';

class ErrorTile extends StatelessWidget {
  final String error;
  final VoidCallback onRetryPressed;

  const ErrorTile({
    super.key,
    required this.error,
    required this.onRetryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(AppStrings.error),
        AppSizedBox.small,
        Text('${AppStrings.errorCode}: $error'),
        AppSizedBox.small,
        ElevatedButton(
          onPressed: onRetryPressed,
          child: const Text(AppStrings.retry),
        ),
      ],
    );
  }
}
