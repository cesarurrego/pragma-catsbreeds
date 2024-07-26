import 'package:flutter/material.dart';
import 'package:pragma_test/app/theme/app_insets.dart';

class AppSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final bool hasText;
  final VoidCallback onClearPressed;
  final ValueChanged<String> onChanged;

  const AppSearchBar({
    super.key,
    required this.controller,
    this.hasText = false,
    required this.onClearPressed,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppInsets.small,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: hasText
              ? IconButton(
                  onPressed: onClearPressed,
                  icon: const Icon(Icons.close),
                )
              : const Icon(Icons.search),
        ),
      ),
    );
  }
}
