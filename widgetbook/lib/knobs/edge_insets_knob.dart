import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class EdgeInsetsKnob extends Knob<EdgeInsets?> {
  EdgeInsetsKnob._({
    required super.initialValue,
    required super.isNullable,
    required super.label,
  })  : _bottomFieldLabel = '$label-Bottom',
        _leftFieldLabel = '$label-Left',
        _rightFieldLabel = '$label-Right',
        _topFieldLabel = '$label-Top';

  static EdgeInsetsKnob from({
    required String label,
    required EdgeInsets initialValue,
  }) {
    return EdgeInsetsKnob._(
      initialValue: initialValue,
      isNullable: false,
      label: label,
    );
  }

  static EdgeInsetsKnob nullableFrom({
    required String label,
    required EdgeInsets? initialValue,
  }) {
    return EdgeInsetsKnob._(
      initialValue: initialValue,
      isNullable: true,
      label: label,
    );
  }

  final String _bottomFieldLabel;
  final String _leftFieldLabel;
  final String _rightFieldLabel;
  final String _topFieldLabel;

  @override
  List<Field> get fields => [
        DoubleInputField(
          initialValue: initialValue?.bottom ?? 0,
          name: _bottomFieldLabel,
        ),
        DoubleInputField(
          initialValue: initialValue?.left ?? 0,
          name: _leftFieldLabel,
        ),
        DoubleInputField(
          initialValue: initialValue?.right ?? 0,
          name: _rightFieldLabel,
        ),
        DoubleInputField(
          initialValue: initialValue?.top ?? 0,
          name: _topFieldLabel,
        ),
      ];

  @override
  EdgeInsets? valueFromQueryGroup(Map<String, String> group) {
    return EdgeInsets.fromLTRB(
      valueOf(_leftFieldLabel, group),
      valueOf(_topFieldLabel, group),
      valueOf(_rightFieldLabel, group),
      valueOf(_bottomFieldLabel, group),
    );
  }
}

extension EdgeInsetsKnobBuilder on KnobsBuilder {
  EdgeInsets edgeInsets({
    required String label,
    EdgeInsets initialValue = EdgeInsets.zero,
  }) =>
      onKnobAdded(
        EdgeInsetsKnob.from(
          initialValue: initialValue,
          label: label,
        ),
      )!;

  EdgeInsets? edgeInsetsOrNull({
    required String label,
    EdgeInsets? initialValue,
  }) =>
      onKnobAdded(
        EdgeInsetsKnob.nullableFrom(
          initialValue: initialValue,
          label: label,
        ),
      );
}
