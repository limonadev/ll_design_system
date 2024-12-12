import 'package:flutter/material.dart';
import 'package:ll_design_system/styles/ll_theme.dart';

class LLText extends StatelessWidget {
  LLText.body1({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.body1(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.body2({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.body2(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.button1({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.button1(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.button2({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.button2(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.button3({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.button3(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.button4({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.button4(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.caption({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.caption(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.custom({
    required this.text,
    required double size,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.custom(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
          size: size,
        );

  LLText.h1({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.h1(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.h2({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.h2(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.h3({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.h3(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.h4({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.h4(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.largeTitle({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.largeTitle(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.p1({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.p1(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.p2({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.p2(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.p3({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.p3(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.title1({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.title1(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.title2({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.title2(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.title3({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.title3(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.title4({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.title4(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.title5({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.title5(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  LLText.subtitle1({
    required this.text,
    Color? color,
    FontWeight? fontWeight,
    double? height,
    super.key,
    TextLeadingDistribution? leadingDistribution,
    FontStyle? fontStyle,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : _style = LLTheme.subtitle1(
          color: color,
          fontStyle: fontStyle,
          fontWeight: fontWeight,
          height: height,
          leadingDistribution: leadingDistribution,
        );

  final int? maxLines;
  final TextOverflow? overflow;
  final String text;
  final TextAlign? textAlign;

  final TextStyle _style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: _style,
      textAlign: textAlign,
    );
  }
}
