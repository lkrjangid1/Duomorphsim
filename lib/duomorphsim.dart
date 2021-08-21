library duomorphsim;

import 'package:flutter/material.dart';

import 'Helper.dart';

class DuoMorphicCard extends StatelessWidget {
  /// duomorphism card
  ///
  /// this package help you to give glassomorphic + neomrphic both effects to a container (at a time).
  /// ```dart
  ///            DuoMorphicCard(
  ///               height: 200,
  ///              width: 200,
  ///               blur: 5,
  ///               innerShadowColor: Colors.grey,
  ///               radius: BorderRadius.circular(10),
  ///               cardBackgroundColor: Colors.white,
  ///               opacity: 0.5,
  ///               offset: Offset(-5, -5),
  ///               child: Center(
  ///                 child: Text('Hello World'),
  ///               ),
  ///             ),
  /// ```

  /// InnerShadow offset
  final Offset offset;

  /// InnerShadow blur
  final double blur;

  /// InnerShadow color
  final Color innerShadowColor;

  /// Card background color
  final Color cardBackgroundColor;

  /// Card background color opacity
  final double opacity;

  /// Card height
  final double height;

  /// Card width
  final double width;

  /// Card radius
  final BorderRadiusGeometry radius;

  /// Card child
  final Widget child;

  DuoMorphicCard({
    required this.child,
    this.offset = const Offset(0, 0),
    this.blur = 5,
    this.innerShadowColor = Colors.grey,
    this.cardBackgroundColor = Colors.white,
    this.opacity = 0.8,
    required this.height,
    required this.width,
    required this.radius,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InnerShadow(
        blur: blur,
        color: innerShadowColor,
        offset: offset,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: radius,
            color: cardBackgroundColor.withOpacity(opacity),
          ),
          child: child,
          height: height,
          width: width,
        ),
      ),
    );
  }
}
