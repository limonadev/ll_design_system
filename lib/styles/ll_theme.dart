import 'package:flutter/material.dart';
import 'package:ll_design_system/styles/ll_color.dart';

class LLTheme {
  static TextStyle body1({
    Color? color,
    FontStyle? fontStyle,
    String? fontFamily,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    TextDecoration? decoration,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 20,
      originalFontSize: 16,
    );
  }

  static TextStyle body2({
    Color? color,
    FontStyle? fontStyle,
    String? fontFamily,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    TextDecoration? decoration,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 16,
      originalFontSize: 14,
    );
  }

  static TextStyle button1({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.bold,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 18,
      originalFontSize: 18,
    );
  }

  static TextStyle button2({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.bold,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 16,
      originalFontSize: 16,
    );
  }

  static TextStyle button3({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.bold,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 12,
      originalFontSize: 12,
    );
  }

  static TextStyle button4({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 10,
      originalFontSize: 10,
    );
  }

  static TextStyle caption({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 16,
      originalFontSize: 13,
    );
  }

  static TextStyle custom({
    required double size,
    Color? color,
    FontStyle? fontStyle,
    String? fontFamily,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    TextDecoration? decoration,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      leadingDistribution: leadingDistribution,
      originalFontHeight: null,
      originalFontSize: size,
    );
  }

  static TextStyle h1({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w900,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 32,
      originalFontSize: 24,
    );
  }

  static TextStyle h2({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w900,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 24,
      originalFontSize: 20,
    );
  }

  static TextStyle h3({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w900,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 24,
      originalFontSize: 16,
    );
  }

  static TextStyle h4({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.w900,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 16,
      originalFontSize: 12,
    );
  }

  static TextStyle largeTitle({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.bold,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 36,
      originalFontSize: 32,
    );
  }

  static TextStyle p1({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 20,
      originalFontSize: 16,
    );
  }

  static TextStyle p2({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 20,
      originalFontSize: 14,
    );
  }

  static TextStyle p3({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 16,
      originalFontSize: 12,
    );
  }

  static TextStyle title1({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.bold,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 32,
      originalFontSize: 28,
    );
  }

  static TextStyle title2({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.bold,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 32,
      originalFontSize: 24,
    );
  }

  static TextStyle title3({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.bold,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 28,
      originalFontSize: 22,
    );
  }

  static TextStyle title4({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.bold,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 24,
      originalFontSize: 20,
    );
  }

  static TextStyle title5({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.bold,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 24,
      originalFontSize: 16,
    );
  }

  static TextStyle subtitle1({
    Color? color,
    TextDecoration? decoration,
    String? fontFamily,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    TextLeadingDistribution? leadingDistribution,
  }) {
    return _base(
      color: color,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      leadingDistribution: leadingDistribution,
      originalFontHeight: 24,
      originalFontSize: 18,
    );
  }

  static TextStyle _base({
    required Color? color,
    required TextDecoration? decoration,
    required String? fontFamily,
    required FontStyle? fontStyle,
    required FontWeight? fontWeight,
    required double? height,
    required TextLeadingDistribution? leadingDistribution,
    required double? originalFontHeight,
    required double originalFontSize,
  }) {
    final adjustedSize = _getAdjustedFontSize(
      originalSize: originalFontSize,
    );
    final adjustedHeight = originalFontHeight == null
        ? height
        : _getAdjustedFontHeight(
            adjustedSize: adjustedSize,
            originalHeight: originalFontHeight,
          );

    return TextStyle(
      fontSize: adjustedSize,
      fontWeight: fontWeight,
      height: height ?? adjustedHeight,
      color: color ?? LLColor.text,
      decoration: decoration,
      fontFamily: fontFamily ?? 'Lato',
      fontStyle: fontStyle,
      leadingDistribution: leadingDistribution,
      package: 'assets',
    );
  }

  static double _getAdjustedFontHeight({
    required double adjustedSize,
    required double originalHeight,
  }) {
    return originalHeight / adjustedSize;
  }

  static double _getAdjustedFontSize({
    required double originalSize,
  }) {
    return originalSize;
  }
}
