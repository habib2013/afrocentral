
import 'package:afrocentral/utils/colorUtils.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
        required this.buttonText,
        required this.onbuttonPressed,
        this.bgColor,
        this.borderColor,
        this.txtColor,
        this.fontSize,
        required this.isIcon})
      : super(key: key);

  final String buttonText;
  final Color? bgColor;
  final Color? borderColor;
  final Color? txtColor;
  final double? fontSize;
  final bool isIcon;
  final VoidCallback onbuttonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: bgColor ?? Colors.transparent,
          borderRadius: BorderRadius.circular(6),

          border: Border.all(
            color: borderColor ?? ColorUtils.APP_BORDER_COLOR,
            width: 0.5,
          ),

      ),
      child: TextButton(
        onPressed: onbuttonPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            mainAxisAlignment: isIcon == false
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceBetween,
            children: [
              Text(
                buttonText,
                style: TextStyle(
                  fontSize: fontSize ?? 18,
                  color: txtColor ?? Colors.white,
                  letterSpacing: 1,
                  fontFamily: 'GtHeavy',
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
