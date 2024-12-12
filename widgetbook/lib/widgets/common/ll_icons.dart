import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ll_design_system/ll_design_system.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'LLIcons', type: LLIcon)
Widget buildLLRoundedContainer(BuildContext context) {
  final containerSize = context.knobs.double.input(
    initialValue: 75,
    label: 'Container Size',
  );
  final iconColor = context.knobs.colorOrNull(
    initialValue: LLColor.black,
    label: 'Icon Color',
  );
  final iconFit = context.knobs.listOrNull(
    label: 'Icon Fit',
    options: BoxFit.values,
  );
  final iconHeight = context.knobs.double.input(
    initialValue: 25,
    label: 'Icon Height',
  );
  final iconWidth = context.knobs.double.input(
    initialValue: 25,
    label: 'Icon Width',
  );

  return Wrap(
    spacing: 25,
    runSpacing: 25,
    children: [
      ...LLIconData.values.map(
        (iconData) {
          final iconIdentifier = 'LLIconData.${iconData.name}';

          return InkWell(
            onTap: () async {
              await Clipboard.setData(
                ClipboardData(text: iconIdentifier),
              );
              Fluttertoast.showToast(
                backgroundColor: LLColor.black,
                fontSize: 16,
                gravity: ToastGravity.BOTTOM_RIGHT,
                msg: 'Copied',
                textColor: LLColor.text,
                toastLength: Toast.LENGTH_SHORT,
                webBgColor: '#00000000',
              );
            },
            child: Tooltip(
              message: iconIdentifier,
              child: LLRoundedContainer.small(
                alignment: Alignment.center,
                backgroundColor: LLColor.text,
                borderColor: LLColor.black,
                height: containerSize,
                width: containerSize,
                child: LLIcon(
                  iconData: iconData,
                  color: iconColor,
                  fit: iconFit,
                  height: iconHeight,
                  width: iconWidth,
                ),
              ),
            ),
          );
        },
      ),
    ],
  );
}
