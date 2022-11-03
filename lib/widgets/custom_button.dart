import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.bgcolor,
      this.size,
      this.alignment,
      this.icons,
      this.label,
      this.onPressed,
      this.sizes,
      this.iconColors,
      this.labelColors,
      required this.borderSidewidth,
      required this.borderWidthColor,
      required this.borderstyle});

  final Color? bgcolor;
  final double? size;
  final Size? sizes;
  final AlignmentGeometry? alignment;
  final IconData? icons;
  final String? label;
  final GestureTapCallback? onPressed;
  final Color? iconColors;
  final Color? labelColors;
  final double borderSidewidth;
  final Color borderWidthColor;
  final BorderStyle borderstyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: borderSidewidth,
              color: borderWidthColor,
              style: borderstyle,
            ),
          ),
          backgroundColor: bgcolor,
          elevation: size,
          minimumSize: sizes,
          alignment: alignment),
      icon: Icon(icons, color: iconColors),
      label: Text(
        '$label',
        style: TextStyle(color: labelColors),
      ),
      onPressed: onPressed,
    );
  }
}
