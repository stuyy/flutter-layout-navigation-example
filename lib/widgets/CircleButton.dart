import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final Icon icon;
  final Color color;
  final Function onPressed;
  final EdgeInsetsGeometry margin;

  CircleButton({ this.icon, this.color, this.onPressed, this.margin });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: this.color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: this.icon,
        onPressed: this.onPressed,
      ),
      margin: this.margin,
    );
  }
}