/// {@template swm_icon_style}
/// SWM Icon style
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

  /// SMW icons style name.
  final String name;
}
