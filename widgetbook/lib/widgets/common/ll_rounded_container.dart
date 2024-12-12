import 'package:flutter/material.dart';
import 'package:ll_design_system/ll_design_system.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/knobs/knobs.dart';

@widgetbook.UseCase(name: 'LLRoundedContainer', type: LLRoundedContainer)
Widget buildLLRoundedContainer(BuildContext context) {
  final type = context.knobs.containerType(label: 'Type');

  final alignment = context.knobs.alignmentOrNull(
    initialValue: Alignment.center,
    label: 'Alignment',
  );
  final backgroundColor = context.knobs.colorOrNull(
    initialValue: LLColor.text,
    label: 'Background color',
  );
  final borderColor = context.knobs.colorOrNull(
    initialValue: LLColor.black,
    label: 'Border color',
  );
  final height = context.knobs.doubleOrNull.input(
    initialValue: 100,
    label: 'Height',
  );
  final margin = context.knobs.edgeInsetsOrNull(
    initialValue: EdgeInsets.zero,
    label: 'Margin',
  );
  final padding = context.knobs.edgeInsetsOrNull(
    initialValue: EdgeInsets.zero,
    label: 'Padding',
  );
  final width = context.knobs.doubleOrNull.input(
    initialValue: 100,
    label: 'Width',
  );
  final child = FlutterLogo(
    size: context.knobs.doubleOrNull.input(
      initialValue: 25,
      label: 'Logo Size',
    ),
  );

  switch (type) {
    case ContainerType.xsmall:
      return LLRoundedContainer.xsmall(
        alignment: alignment,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        height: height,
        margin: margin,
        padding: padding,
        width: width,
        child: child,
      );
    case ContainerType.small:
      return LLRoundedContainer.small(
        alignment: alignment,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        height: height,
        margin: margin,
        padding: padding,
        width: width,
        child: child,
      );
    case ContainerType.medium:
      return LLRoundedContainer.medium(
        alignment: alignment,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        height: height,
        margin: margin,
        padding: padding,
        width: width,
        child: child,
      );
    case ContainerType.large:
      return LLRoundedContainer.large(
        alignment: alignment,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        height: height,
        margin: margin,
        padding: padding,
        width: width,
        child: child,
      );
    case ContainerType.xlarge:
      return LLRoundedContainer.xlarge(
        alignment: alignment,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        height: height,
        margin: margin,
        padding: padding,
        width: width,
        child: child,
      );
    case ContainerType.xxlarge:
      return LLRoundedContainer.xxlarge(
        alignment: alignment,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        height: height,
        margin: margin,
        padding: padding,
        width: width,
        child: child,
      );
  }
}
