import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  final double width;
  final String text;
  final Color color;
  final bool? isBorder;
  final VoidCallback? onTap;
  final bool? isActive;
  const GreenButton(
      {super.key,
      required this.width,
      this.isActive,
      this.isBorder,
      required this.text,
      this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        alignment: Alignment.center,
        height: 46,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isBorder == true || isActive == true ? null : color,
            border: isBorder == true
                ? Border.all(width: 2, color: Colors.white)
                : isActive == true
                    ? Border.all(width: 2, color: Colors.green)
                    : null),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15.77,
              color: isBorder == true || isActive == true
                  ? Colors.white
                  : const Color(0xff222222)),
        ),
      ),
    );
  }
}
