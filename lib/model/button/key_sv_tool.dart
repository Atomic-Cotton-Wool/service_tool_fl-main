class KeySvTool {
  /// [label] is a String that is the label of the button
  final String label; // метка при не нажатом shift

  /// [labelShiftLeft] is a String that is the label of the button shift
  final String? labelShiftLeft; // метка при нажатом shift
  /// [labelShiftRight] is a String that is the label of the button shift
  final String? labelShiftRight; // вторая метка при нажатом  shift
  /// [id_1] is a String that is the id
  final String? id_1; // id
  /// [id_2] is a String that is the id pressed button shift
  final String? id_2; // id при нажатом shift
  /// [scaleLabel] is a int that is the scale
  final int scaleLabel; // масштабирование
  /// [scaleLabShLeft] is a int that is the scale pressed button shift
  final double scaleLabShLeft; // масштабирование
  /// [scaleLabShRight] is a int that is the scale pressed button shift
  final double scaleLabShRight; // масштабирование

  /// [shiftFull] is a bool that is the shift full
  KeySvTool.shiftFull({
    required this.label,
    required this.scaleLabel,
    required this.scaleLabShLeft,
    required this.scaleLabShRight,
    required this.labelShiftLeft,
    required this.labelShiftRight,
    required this.id_1,
    required this.id_2,
  });
  KeySvTool.shiftEmpty({
    this.labelShiftRight,
    this.labelShiftLeft,
    this.id_2,
    this.scaleLabShLeft = 1,
    this.scaleLabShRight = 1,
    required this.id_1,
    required this.label,
    required this.scaleLabel,
  });
}
