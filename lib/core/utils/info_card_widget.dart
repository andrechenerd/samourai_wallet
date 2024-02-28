import 'package:flutter/material.dart';

class InfoCards extends StatelessWidget {
  final Color color;
  final String text;
  final String untitle;
  final double width;
  final bool? isBorder;
  final bool? isGreen;
  const InfoCards(
      {super.key,
      required this.color,
      required this.text,
      required this.untitle,
      required this.width,
      this.isBorder,
      this.isGreen});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 46.68,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: isBorder == true
                  ? Border.all(width: 2, color: Colors.white)
                  : isGreen == true
                      ? Border.all(width: 2, color: Colors.green)
                      : null,
              borderRadius: BorderRadius.circular(16),
              color: isBorder == true || isGreen == true ? Colors.transparent : Colors.white),
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 19),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
            width: 222,
            child: Text(
              untitle,
              style: const TextStyle(
                  color: Color(0xffA1A1A1),
                  fontWeight: FontWeight.w700,
                  fontSize: 11.36),
            ))
      ],
    );
  }
}
