import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class TextAlignKnob extends Knob<TextAlign?> {
  TextAlignKnob._({
    required super.initialValue,
    required super.isNullable,
    required super.label,
  });

  static TextAlignKnob from({
    required String label,
    required TextAlign initialValue,
  }) {
    return TextAlignKnob._(
      initialValue: initialValue,
      isNullable: false,
      label: label,
    );
  }

  static TextAlignKnob nullableFrom({
    required String label,
    required TextAlign? initialValue,
  }) {
    return TextAlignKnob._(
      initialValue: initialValue,
      isNullable: true,
      label: label,
    );
  }

  static const String _fieldLabel = 'TextAlign type';

  @override
  List<Field> get fields => [
        ListField<TextAlign>(
          initialValue: initialValue,
          name: _fieldLabel,
          values: TextAlign.values,
        ),
      ];

  @override
  TextAlign? valueFromQueryGroup(Map<String, String> group) {
    return valueOf(_fieldLabel, group);
  }
}

extension TextAlignKnobBuilder on KnobsBuilder {
  TextAlign textAlign({
    required String label,
    TextAlign initialValue = TextAlign.center,
  }) =>
      onKnobAdded(
        TextAlignKnob.from(
          initialValue: initialValue,
          label: label,
        ),
      )!;

  TextAlign? textAlignOrNull({
    required String label,
    TextAlign? initialValue,
  }) =>
      onKnobAdded(
        TextAlignKnob.nullableFrom(
          initialValue: initialValue,
          label: label,
        ),
      );
}
