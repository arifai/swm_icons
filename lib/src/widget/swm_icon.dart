import 'package:flutter/material.dart';
import 'package:swm_icons/swm_icons.dart';

/// {@template swm_icon}
/// A widget that displays a SWM icon with customizable properties.
/// {@endtemplate}
class SWMIcon extends StatelessWidget {
  /// {@macro swm_icon}
  const SWMIcon(
    this.icon, {
    super.key,
    this.color,
    this.size,
    this.style,
    this.semanticLabel,
  });

  /// The icon to display.
  final SWMIcons icon;

  /// The color to use when drawing the icon.
  /// If null, defaults to the icon theme color or [Colors.black].
  final Color? color;

  /// The size of the icon in logical pixels.
  /// If null, defaults to the icon theme size or 20.
  final double? size;

  /// The style of the icon.
  /// If null, defaults to [SWMIconStyles.outline].
  final SWMIconStyles? style;

  /// Semantic label for the icon.
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final double size = this.size ?? IconTheme.of(context).size ?? 20;
    final Color color =
        this.color ?? IconTheme.of(context).color ?? Colors.black;
    final String styleName =
        (style ?? SWMIconsTheme.maybeStyleOf(context) ?? SWMIconStyles.outline)
            .name;

    return Icon(
      IconData(icon.codePoint, fontFamily: styleName, fontPackage: 'swm_icons'),
      size: size,
      color: color,
      semanticLabel: semanticLabel,
    );
  }
}
