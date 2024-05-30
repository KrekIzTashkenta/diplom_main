import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    required this.child,
    this.isFixedSize = true,
  });

  final VoidCallback onPressed;
  final Color backgroundColor;
  final Widget child;
  final bool? isFixedSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(),
        backgroundColor: backgroundColor,
        fixedSize: (isFixedSize ?? false) ? Size(MediaQuery.of(context).size.width / 3, 40) : null,
      ),
      child: child,
    );
  }
}
