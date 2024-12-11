import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class AlignmentKnob extends Knob<Alignment?> {
  AlignmentKnob._({
    required super.initialValue,
    required super.isNullable,
    required super.label,
  });

  static AlignmentKnob from({
    required String label,
    required Alignment initialValue,
  }) {
    return AlignmentKnob._(
      initialValue: initialValue,
      isNullable: false,
      label: label,
    );
  }

  static AlignmentKnob nullableFrom({
    required String label,
    required Alignment? initialValue,
  }) {
    return AlignmentKnob._(
      initialValue: initialValue,
      isNullable: true,
      label: label,
    );
  }

  static const String _fieldLabel = 'Alignment type';

  @override
  List<Field> get fields => [
        ListField<Alignment>(
          initialValue: initialValue,
          name: _fieldLabel,
          values: [
            Alignment.bottomCenter,
            Alignment.bottomLeft,
            Alignment.bottomRight,
            Alignment.center,
            Alignment.centerLeft,
            Alignment.centerRight,
            Alignment.topCenter,
            Alignment.topLeft,
            Alignment.topRight,
          ],
        ),
      ];

  @override
  Alignment? valueFromQueryGroup(Map<String, String> group) {
    return valueOf(_fieldLabel, group);
  }
}

extension AlignmentKnobBuilder on KnobsBuilder {
  Alignment alignment({
    required String label,
    Alignment initialValue = Alignment.center,
  }) =>
      onKnobAdded(
        AlignmentKnob.from(
          initialValue: initialValue,
          label: label,
        ),
      )!;

  Alignment? alignmentOrNull({
    required String label,
    Alignment? initialValue,
  }) =>
      onKnobAdded(
        AlignmentKnob.nullableFrom(
          initialValue: initialValue,
          label: label,
        ),
      );
}
