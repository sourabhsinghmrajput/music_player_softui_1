import 'package:flutter/material.dart';
import 'constants.dart';

class MySoftButton extends StatelessWidget {
  final double size;
  final Widget child;

  MySoftButton({
    required this.size,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      child: child,
      decoration: BoxDecoration(
        color: kbackgroundColor,
        boxShadow: [
          BoxShadow(
            color: kshadowColor,
            offset: const Offset(8, 6),
            blurRadius: 12,
          ),
          BoxShadow(
            color: klightShadowColor,
            offset: const Offset(-8, -6),
            blurRadius: 12,
          ),
        ],
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
