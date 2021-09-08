import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    this.borderRadius = 32.0,
    this.child,
    this.size,
    this.backgroundColor,
    this.onPressed,
    this.paddnig = 16.0,
  }) : super(key: key);

  final double borderRadius;
  final double paddnig;
  final Widget? child;
  final Size? size;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.all(Radius.circular(borderRadius));
    return Material(
      color: backgroundColor ?? Theme.of(context).accentColor,
      borderRadius: radius,
      child: InkWell(
        onTap: onPressed,
        borderRadius: radius,
        child: Container(
          padding: EdgeInsets.all(paddnig),
          height: size?.height,
          width: size?.width,
          decoration: BoxDecoration(
            borderRadius: radius,
          ),
          child: child,
        ),
      ),
    );
  }
}
