import 'package:flutter/material.dart';

class LLRoundedContainer extends StatelessWidget {
  const LLRoundedContainer.large({
    this.alignment,
    this.backgroundColor,
    this.borderColor,
    this.boxShadow,
    this.child,
    this.gradient,
    this.height,
    this.image,
    super.key,
    this.margin,
    this.padding,
    this.width,
  }) : _amountRounded = 24.0;

  const LLRoundedContainer.medium({
    this.alignment,
    this.backgroundColor,
    this.borderColor,
    this.boxShadow,
    this.child,
    this.gradient,
    this.height,
    this.image,
    super.key,
    this.margin,
    this.padding,
    this.width,
  }) : _amountRounded = 16.0;

  const LLRoundedContainer.small({
    this.alignment,
    this.backgroundColor,
    this.borderColor,
    this.boxShadow,
    this.child,
    this.gradient,
    this.height,
    this.image,
    super.key,
    this.margin,
    this.padding,
    this.width,
  }) : _amountRounded = 8.0;

  const LLRoundedContainer.xlarge({
    this.alignment,
    this.backgroundColor,
    this.borderColor,
    this.boxShadow,
    this.child,
    this.gradient,
    this.height,
    this.image,
    super.key,
    this.margin,
    this.padding,
    this.width,
  }) : _amountRounded = 32.0;

  const LLRoundedContainer.xxlarge({
    this.alignment,
    this.backgroundColor,
    this.borderColor,
    this.boxShadow,
    this.child,
    this.gradient,
    this.height,
    this.image,
    super.key,
    this.margin,
    this.padding,
    this.width,
  }) : _amountRounded = 72.0;

  const LLRoundedContainer.xsmall({
    this.alignment,
    this.backgroundColor,
    this.borderColor,
    this.boxShadow,
    this.child,
    this.gradient,
    this.height,
    this.image,
    super.key,
    this.margin,
    this.padding,
    this.width,
  }) : _amountRounded = 4.0;

  final AlignmentGeometry? alignment;
  final Color? backgroundColor;
  final Color? borderColor;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final Gradient? gradient;
  final double? height;
  final DecorationImage? image;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? width;

  final double _amountRounded;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      decoration: BoxDecoration(
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
              )
            : null,
        borderRadius: BorderRadius.all(
          Radius.circular(_amountRounded),
        ),
        boxShadow: boxShadow,
        color: backgroundColor,
        gradient: gradient,
        image: image,
      ),
      height: height,
      margin: margin,
      padding: padding,
      width: width,
      child: child,
    );
  }
}
