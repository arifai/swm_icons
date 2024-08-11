/// {@template swm_icon_style}
/// Represents different styles for SWM icons.
/// {@endtemplate}
enum SWMIconStyles {
  /// Broken style.
  broken('SWMIconsBroken'),

  /// Curved style.
  curved('SWMIconsCurved'),

  /// Outline style.
  outline('SWMIconsOutline');

  /// {@macro swm_icon_style}
  const SWMIconStyles(this.name);

  /// The name of the SWM icon style.
  final String name;
}
