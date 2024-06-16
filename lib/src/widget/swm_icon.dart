import 'package:flutter/material.dart';
import 'package:swm_icons/swm_icons.dart';

/// {@template swm_icon}
/// Create a SWM Icon.
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

  /// SWM icon
  final SWMIcons icon;

  /// Color icon
  final Color? color;

  /// Size icon
  final double? size;

  /// SWM Icon style. If null, the default value is [SWMIconStyle.outline]
  final SWMIconStyles? style;

  /// Semantic label for the icon.
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final double size = this.size ?? IconTheme.of(context).size ?? 20;
    final Color color =
        this.color ?? IconTheme.of(context).color ?? Colors.black;
    final String styleName =
        (style ?? _SWMIconsTheme.maybeStyleOf(context) ?? SWMIconStyles.outline)
            .name;

    return Icon(
      IconData(icon.codePoint, fontFamily: styleName, fontPackage: 'swm_icons'),
      size: size,
      color: color,
      semanticLabel: semanticLabel,
    );
  }
}

class _SWMIconsTheme extends InheritedWidget {
  const _SWMIconsTheme({required super.child, required this.style});

  final SWMIconStyles style;

  @override
  bool updateShouldNotify(covariant _SWMIconsTheme oldWidget) {
    return style != oldWidget.style;
  }

  static SWMIconStyles? maybeStyleOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_SWMIconsTheme>()?.style;
  }
}
