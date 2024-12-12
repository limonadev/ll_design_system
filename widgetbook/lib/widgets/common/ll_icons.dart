import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ll_design_system/ll_design_system.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'LLIcons', type: LLIcon)
Widget buildLLRoundedContainer(BuildContext context) {
  final containerSize = context.knobs.double.input(
    label: 'Container Size',
    initialValue: 75,
  );
  final iconColor = context.knobs.colorOrNull(
    label: 'Icon Color',
    initialValue: Colors.black,
  );
  final iconFit = context.knobs.listOrNull(
    label: 'Icon Fit',
    options: BoxFit.values,
  );
  final iconHeight = context.knobs.double.input(
    label: 'Icon Height',
    initialValue: 25,
  );
  final iconWidth = context.knobs.double.input(
    label: 'Icon Width',
    initialValue: 25,
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
                backgroundColor: Colors.black,
                fontSize: 16,
                gravity: ToastGravity.BOTTOM_RIGHT,
                msg: 'Copied',
                textColor: Colors.white,
                toastLength: Toast.LENGTH_SHORT,
                webBgColor: '#00000000',
              );
            },
            child: Tooltip(
              message: iconIdentifier,
              child: LLRoundedContainer.small(
                alignment: Alignment.center,
                backgroundColor: Colors.white,
                borderColor: Colors.black,
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
