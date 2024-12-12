import 'package:flutter/cupertino.dart';
import 'package:ll_design_system/models/ll_button_size.dart';
import 'package:ll_design_system/styles/ll_color.dart';
import 'package:ll_design_system/widgets/common/ll_icons.dart';
import 'package:ll_design_system/widgets/common/ll_rounded_container.dart';
import 'package:ll_design_system/widgets/text/ll_text.dart';

enum LLDefaultButtonType {
  brilliant,
  danger,
  disable,
  opaque,
}

class LLDefaultButton extends StatelessWidget {
  const LLDefaultButton.button1({
    required this.onPressed,
    required this.text,
    required this.type,
    this.expand = true,
    this.loading = false,
    this.textAlign = TextAlign.center,
    this.textColor = LLColor.text,
    super.key,
    EdgeInsets? padding,
    this.prefixIcon,
  })  : padding = padding ?? const EdgeInsets.all(16),
        _size = LLButtonSize.button1;

  const LLDefaultButton.button2({
    required this.onPressed,
    required this.text,
    required this.type,
    this.expand = true,
    this.loading = false,
    this.textAlign = TextAlign.center,
    this.textColor = LLColor.text,
    super.key,
    EdgeInsets? padding,
    this.prefixIcon,
  })  : padding = padding ?? const EdgeInsets.all(12),
        _size = LLButtonSize.button2;

  const LLDefaultButton.button3({
    required this.onPressed,
    required this.text,
    required this.type,
    this.expand = true,
    this.loading = false,
    this.textAlign = TextAlign.center,
    this.textColor = LLColor.text,
    super.key,
    EdgeInsets? padding,
    this.prefixIcon,
  })  : padding = padding ?? const EdgeInsets.all(8),
        _size = LLButtonSize.button3;

  final bool expand;
  final bool loading;
  final VoidCallback? onPressed;
  final EdgeInsets padding;
  final LLIconData? prefixIcon;
  final String text;
  final LLDefaultButtonType type;
  final Color textColor;
  final TextAlign textAlign;
  final LLButtonSize _size;

  @override
  Widget build(BuildContext context) {
    final prefixColor = textColor;

    Color backgroundColor;

    switch (type) {
      case LLDefaultButtonType.brilliant:
        backgroundColor = LLColor.primary70;
        break;
      case LLDefaultButtonType.danger:
        backgroundColor = LLColor.red;
        break;
      case LLDefaultButtonType.disable:
        backgroundColor = LLColor.soldOut;
        break;
      case LLDefaultButtonType.opaque:
        backgroundColor = LLColor.background24dp;
        break;
    }

    Widget? prefixContent;
    Widget textContent;

    switch (_size) {
      case LLButtonSize.button1:
        if (prefixIcon != null) {
          prefixContent = LLIcon.sized(
            color: prefixColor,
            iconData: prefixIcon!,
            size: 24,
          );
        }
        textContent = LLText.button1(
          color: textColor,
          text: text,
          textAlign: textAlign,
        );
        break;
      case LLButtonSize.button2:
        if (prefixIcon != null) {
          prefixContent = LLIcon.sized(
            color: prefixColor,
            iconData: prefixIcon!,
            size: 20,
          );
        }
        textContent = LLText.button2(
          color: textColor,
          text: text,
          textAlign: textAlign,
        );
        break;
      case LLButtonSize.button3:
        if (prefixIcon != null) {
          prefixContent = LLIcon.sized(
            color: prefixColor,
            iconData: prefixIcon!,
            size: 16,
          );
        }
        textContent = LLText.button3(
          color: textColor,
          text: text,
          textAlign: textAlign,
        );
        break;
    }

    return GestureDetector(
      onTap: onPressed,
      child: LLRoundedContainer.small(
        backgroundColor: backgroundColor,
        padding: padding,
        child: Row(
          mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixContent != null) ...[
              prefixContent,
              const SizedBox(width: 12),
            ],
            Flexible(
              child: loading ? const CupertinoActivityIndicator() : textContent,
            ),
          ],
        ),
      ),
    );
  }
}
