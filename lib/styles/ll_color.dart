import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LLColor {
  static const _Color background00dp = _Color(
    name: 'background00dp',
    value: 0xff0f1a24,
  );
  static const _Color background24dp = _Color(
    name: 'background24dp',
    value: 0xff353f47,
  );
  static const _Color black = _Color(
    name: 'black',
    value: 0xff000000,
  );
  static const _Color primary70 = _Color(
    name: 'primary70',
    value: 0xff0682ff,
  );
  static const _Color red = _Color(
    name: 'red',
    value: 0xffd60000,
  );
  static const _Color soldOut = _Color(
    name: 'soldOut',
    value: 0xff7f3648,
  );
  static const _Color text = _Color(
    name: 'text',
    value: 0xffffffff,
  );

  /// Given the absence of mirroring in Flutter, we need to manually keep track
  /// of all the colors in the design system.
  static List<_Color> get values => [
        background00dp,
        background24dp,
        black,
        primary70,
        red,
        soldOut,
        text,
      ];
}

class _Color extends Color with EquatableMixin {
  const _Color({
    required this.name,
    required int value,
  }) : super(value);

  final String name;

  @override
  List<Object> get props {
    return [
      name,
      value,
    ];
  }
}
