
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Color color;
  final Color textColor;
  final double height;
  final double width;
  final BorderRadius borderRadius;
  final EdgeInsets margin;
  final TextStyle textStyle;

  CustomButton({
    Key? key,
    this.onPressed,
    this.text,
    this.color = const Color(0xFFFC6011),
    this.textColor = Colors.white,
    this.height = 56,
    this.width = double.infinity,
    this.borderRadius = const BorderRadius.all(Radius.circular(34)),
    this.margin = const EdgeInsets.symmetric(horizontal: 25),
    TextStyle? textStyle,
  })  : textStyle = textStyle ??
      TextStyle(
        fontFamily: "Metropolis",
        height: 1.5,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
        super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onPressed?.call();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        height: widget.height,
        width: widget.width,
        margin: widget.margin,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _isPressed ? widget.color.withOpacity(0.5) : widget.color,
          borderRadius: widget.borderRadius,
        ),
        child: Text(
          widget.text ?? "",
          style: widget.textStyle.copyWith(color: widget.textColor),
        ),
      ),
    );
  }
}
