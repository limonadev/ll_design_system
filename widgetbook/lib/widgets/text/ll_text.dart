import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ll_design_system/ll_design_system.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/knobs/knobs.dart';

enum _WrapType {
  column,
  fixedBox,
  row,
}

@widgetbook.UseCase(name: 'LLText.body1', type: LLText)
Widget buildLLTextBody1(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.body1(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.body2', type: LLText)
Widget buildLLTextBody2(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.body2(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.button1', type: LLText)
Widget buildLLTextButton1(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.button1(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.button2', type: LLText)
Widget buildLLTextButton2(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.button2(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.button3', type: LLText)
Widget buildLLTextButton3(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.button3(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.button4', type: LLText)
Widget buildLLTextButton4(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.button4(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.caption', type: LLText)
Widget buildLLTextCaption(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.caption(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.h1', type: LLText)
Widget buildLLTextH1(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.h1(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.h2', type: LLText)
Widget buildLLTextH2(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.h2(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.h3', type: LLText)
Widget buildLLTextH3(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.h3(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.h4', type: LLText)
Widget buildLLTextH4(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.h4(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.largeTitle', type: LLText)
Widget buildLLTextLargeTitle(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.largeTitle(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.p1', type: LLText)
Widget buildLLTextP1(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.p1(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.p2', type: LLText)
Widget buildLLTextP2(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.p2(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.p3', type: LLText)
Widget buildLLTextP3(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.p3(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.title1', type: LLText)
Widget buildLLTextTitle1(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.title1(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.title2', type: LLText)
Widget buildLLTextTitle2(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.title2(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.title3', type: LLText)
Widget buildLLTextTitle3(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.title3(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.title4', type: LLText)
Widget buildLLTextTitle4(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.title4(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.title5', type: LLText)
Widget buildLLTextTitle5(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.title5(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

@widgetbook.UseCase(name: 'LLText.subtitle1', type: LLText)
Widget buildLLTextSubtitle1(BuildContext context) {
  final commonFields = _getCommonFields(context);

  final llText = LLText.subtitle1(
    color: commonFields.color,
    maxLines: commonFields.maxLines,
    overflow: commonFields.overflow,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
  );

  return _buildWrapper(
    context: context,
    child: llText,
  );
}

_Fields _getCommonFields(BuildContext context) {
  final color = context.knobs.colorOrNull(
    initialValue: LLColor.text,
    label: 'Color',
  );
  final maxLines = context.knobs.intOrNull.input(
    initialValue: 1,
    label: 'Max Lines',
  );
  final overflow = context.knobs.listOrNull(
    initialOption: TextOverflow.ellipsis,
    label: 'Overflow',
    options: TextOverflow.values,
  );
  final text = context.knobs.string(
    initialValue: 'LineLeap',
    label: 'Text',
  );
  final textAlign = context.knobs.textAlignOrNull(
    initialValue: TextAlign.center,
    label: 'Text Align',
  );

  return _Fields(
    color: color,
    maxLines: maxLines,
    overflow: overflow,
    text: text,
    textAlign: textAlign,
  );
}

Widget _buildWrapper({
  required Widget child,
  required BuildContext context,
}) {
  final wrapType = context.knobs.list(
    initialOption: _WrapType.fixedBox,
    label: 'Wrap Type',
    options: _WrapType.values,
  );

  final Widget wrapper;
  switch (wrapType) {
    case _WrapType.column:
      wrapper = Column(
        children: [
          child,
        ],
      );
      break;
    case _WrapType.fixedBox:
      wrapper = SizedBox(
        height: context.knobs.doubleOrNull.input(
          initialValue: 250,
          label: 'Box Height',
        ),
        width: context.knobs.doubleOrNull.input(
          initialValue: 250,
          label: 'Box Width',
        ),
        child: child,
      );
      break;
    case _WrapType.row:
      wrapper = Row(
        children: [
          child,
        ],
      );
      break;
  }

  return LLRoundedContainer.xsmall(
    backgroundColor: context.knobs.colorOrNull(
      initialValue: LLColor.black,
      label: 'Background Container Color',
    ),
    borderColor: context.knobs.colorOrNull(
      initialValue: LLColor.text,
      label: 'Border Container Color',
    ),
    child: wrapper,
  );
}

final class _Fields extends Equatable {
  const _Fields({
    required this.color,
    required this.maxLines,
    required this.overflow,
    required this.text,
    required this.textAlign,
  });

  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final String text;
  final TextAlign? textAlign;

  @override
  List<Object?> get props => [
        color,
        maxLines,
        overflow,
        text,
        textAlign,
      ];
}
