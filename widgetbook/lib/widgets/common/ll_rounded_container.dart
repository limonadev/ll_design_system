import 'package:flutter/material.dart';
import 'package:ll_design_system/ll_design_system.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/knobs/knobs.dart';

@widgetbook.UseCase(name: 'LLRoundedContainer', type: LLRoundedContainer)
Widget buildLLRoundedContainer(BuildContext context) {
  final type = context.knobs.containerType(label: 'Type');

  final alignment = context.knobs.alignmentOrNull(
    label: 'Alignment',
    initialValue: Alignment.center,
  );
  final backgroundColor = context.knobs.colorOrNull(
    label: 'Background color',
    initialValue: Colors.white,
  );
  final borderColor = context.knobs.colorOrNull(
    label: 'Border color',
    initialValue: Colors.black,
  );
  final height = context.knobs.doubleOrNull.input(
    label: 'Height',
    initialValue: 100,
  );
  final margin = context.knobs.edgeInsetsOrNull(
    label: 'Margin',
    initialValue: EdgeInsets.zero,
  );
  final padding = context.knobs.edgeInsetsOrNull(
    label: 'Padding',
    initialValue: EdgeInsets.zero,
  );
  final width = context.knobs.doubleOrNull.input(
    label: 'Width',
    initialValue: 100,
  );
  final child = FlutterLogo(
    size: context.knobs.doubleOrNull.input(
      label: 'Logo Size',
      initialValue: 25,
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
