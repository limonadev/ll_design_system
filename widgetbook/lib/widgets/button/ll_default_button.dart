import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ll_design_system/ll_design_system.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/knobs/knobs.dart';

@widgetbook.UseCase(name: 'LLDefaultButton.button1', type: LLDefaultButton)
Widget buildLLDefaultButton1(BuildContext context) {
  final commonFields = _getCommonFields(context);

  return LLDefaultButton.button1(
    expand: commonFields.expand,
    loading: commonFields.loading,
    onPressed: commonFields.onPressed,
    padding: commonFields.padding,
    prefixIcon: commonFields.prefixIcon,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
    textColor: commonFields.textColor,
    type: commonFields.buttonType,
  );
}

@widgetbook.UseCase(name: 'LLDefaultButton.button2', type: LLDefaultButton)
Widget buildLLDefaultButton2(BuildContext context) {
  final commonFields = _getCommonFields(context);

  return LLDefaultButton.button2(
    expand: commonFields.expand,
    loading: commonFields.loading,
    onPressed: commonFields.onPressed,
    padding: commonFields.padding,
    prefixIcon: commonFields.prefixIcon,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
    textColor: commonFields.textColor,
    type: commonFields.buttonType,
  );
}

@widgetbook.UseCase(name: 'LLDefaultButton.button3', type: LLDefaultButton)
Widget buildLLDefaultButton3(BuildContext context) {
  final commonFields = _getCommonFields(context);

  return LLDefaultButton.button3(
    expand: commonFields.expand,
    loading: commonFields.loading,
    onPressed: commonFields.onPressed,
    padding: commonFields.padding,
    prefixIcon: commonFields.prefixIcon,
    text: commonFields.text,
    textAlign: commonFields.textAlign,
    textColor: commonFields.textColor,
    type: commonFields.buttonType,
  );
}

_Fields _getCommonFields(BuildContext context) {
  final buttonType = context.knobs.list(
    initialOption: LLDefaultButtonType.brilliant,
    label: 'Button Type',
    options: LLDefaultButtonType.values,
  );
  final expand = context.knobs.boolean(
    initialValue: false,
    label: 'Expand',
  );
  final loading = context.knobs.boolean(
    initialValue: false,
    label: 'Loading',
  );
  final shouldHaveCallback = context.knobs.boolean(
    initialValue: true,
    label: 'Should have callback',
  );
  final padding = context.knobs.edgeInsetsOrNull(
    label: 'Padding',
  );
  final prefixIcon = context.knobs.listOrNull(
    label: 'Prefix Icon',
    options: LLIconData.values,
  );
  final text = context.knobs.string(
    initialValue: 'LineLeap',
    label: 'Text',
  );
  final textAlign = context.knobs.textAlign(
    initialValue: TextAlign.center,
    label: 'Text Align',
  );
  final textColor = context.knobs.color(
    initialValue: LLColor.text,
    label: 'Text Color',
  );

  return _Fields(
    buttonType: buttonType,
    expand: expand,
    loading: loading,
    onPressed: shouldHaveCallback
        ? () {
            Fluttertoast.showToast(
              backgroundColor: LLColor.black,
              fontSize: 16,
              gravity: ToastGravity.BOTTOM_RIGHT,
              msg: 'Pressed',
              textColor: LLColor.text,
              toastLength: Toast.LENGTH_SHORT,
              webBgColor: '#00000000',
            );
          }
        : null,
    padding: padding,
    prefixIcon: prefixIcon,
    text: text,
    textAlign: textAlign,
    textColor: textColor,
  );
}

final class _Fields extends Equatable {
  const _Fields({
    required this.buttonType,
    required this.expand,
    required this.loading,
    required this.onPressed,
    required this.padding,
    required this.prefixIcon,
    required this.text,
    required this.textAlign,
    required this.textColor,
  });

  final LLDefaultButtonType buttonType;
  final bool expand;
  final bool loading;
  final VoidCallback? onPressed;
  final EdgeInsets? padding;
  final LLIconData? prefixIcon;
  final String text;
  final TextAlign textAlign;
  final Color textColor;

  @override
  List<Object?> get props => [
        buttonType,
        expand,
        loading,
        onPressed,
        padding,
        prefixIcon,
        text,
        textAlign,
        textColor,
      ];
}
