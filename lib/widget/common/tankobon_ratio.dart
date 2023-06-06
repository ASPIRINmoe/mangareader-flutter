import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

//tankobon size https://en.wikipedia.org/wiki/Tankōbon
const double tankobonRatio = 13 / 18;

class TankobonRatio extends StatelessWidget {
  const TankobonRatio({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: tankobonRatio,
      child: child,
    );
  }
}
