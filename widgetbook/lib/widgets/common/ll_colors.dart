import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ll_design_system/ll_design_system.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'LLColors', type: ColorSelector)
Widget buildLLRoundedContainer(BuildContext context) {
  final containerSize = context.knobs.double.input(
    initialValue: 75,
    label: 'Container Size',
  );

  return ColoredBox(
    color: LLColor.black,
    child: Wrap(
      spacing: 25,
      runSpacing: 25,
      children: [
        ...LLColor.values.map(
          (color) {
            final colorIdentifier = 'LLColor.${color.name}';

            return InkWell(
              onTap: () async {
                await Clipboard.setData(
                  ClipboardData(text: colorIdentifier),
                );
                Fluttertoast.showToast(
                  backgroundColor: LLColor.red,
                  fontSize: 16,
                  gravity: ToastGravity.BOTTOM_RIGHT,
                  msg: 'Copied',
                  textColor: LLColor.text,
                  toastLength: Toast.LENGTH_SHORT,
                  webBgColor: '#00000000',
                );
              },
              child: Tooltip(
                message: '${color.name} - ${color.value.toRadixString(16)}',
                child: ColorSelector(
                  color: color,
                  containerSize: containerSize,
                ),
              ),
            );
          },
        ),
      ],
    ),
  );
}

class ColorSelector extends StatelessWidget {
  const ColorSelector({
    required this.color,
    required this.containerSize,
    super.key,
  });

  final Color color;
  final double containerSize;

  @override
  Widget build(BuildContext context) {
    return LLRoundedContainer.small(
      alignment: Alignment.center,
      backgroundColor: color,
      borderColor: LLColor.text,
      height: containerSize,
      width: containerSize,
    );
  }
}
