import 'package:flutter/material.dart';
import 'package:swm_icons/swm_icons.dart';

/// {@template swm_icon_theme}
/// SWM Icons Theme.
/// {@endtemplate}
class SWMIconsTheme extends InheritedWidget {
  /// {@macro swm_icon_theme}
  const SWMIconsTheme({super.key, required super.child, required this.style});

  /// SWM Icons style.
  final SWMIconStyles style;

  @override
  bool updateShouldNotify(covariant SWMIconsTheme oldWidget) {
    return style != oldWidget.style;
  }

  /// The style from the closest instance of this class that encloses the given context.
  ///
  /// Typical usage is as follows:
  /// ```dart
  /// final String styleName = (style ?? SWMIconsTheme.styleOf(context)).name;
  /// ```
  static SWMIconStyles styleOf(BuildContext context) {
    final SWMIconStyles? swmIconStyles = maybeStyleOf(context);

    assert(swmIconStyles != null, 'There is no `SWMIconStyles` in context.');

    return swmIconStyles!;
  }

  /// The style from the closest instance of this class that encloses the given context, if any.
  ///
  /// Typical usage is as follows:
  /// ```dart
  /// final String styleName = (style ?? SWMIconsTheme.styleOf(context) ?? SWMIconStyles.outline).name;
  /// ```
  static SWMIconStyles? maybeStyleOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SWMIconsTheme>()?.style;
  }
}
