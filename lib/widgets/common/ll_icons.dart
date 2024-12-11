import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum LLIconData implements Comparable<LLIconData> {
  applePay(assetPath: 'icons/apple_pay.svg'),
  arrowUp(assetPath: 'icons/arrow_up.svg'),
  chevronDown(assetPath: 'icons/chevron_down.svg'),
  diamond(assetPath: 'icons/diamond.svg'),
  diamondWhite(assetPath: 'icons/diamond_white.svg'),
  friends(assetPath: 'icons/friends.svg'),
  gift(assetPath: 'icons/gift.svg'),
  googlePay(assetPath: 'icons/google_pay.svg'),
  selectedBlueCheckbox(assetPath: 'icons/selected_blue_checkbox.svg'),
  selectedCheckbox(assetPath: 'icons/selected_checkbox.svg'),
  unselectedBlueCheckbox(
    assetPath: 'icons/unselected_blue_checkbox.svg',
  ),
  unselectedCheckbox(assetPath: 'icons/unselected_checkbox.svg');

  const LLIconData({
    required this.assetPath,
  });

  final String assetPath;

  @override
  int compareTo(LLIconData other) => assetPath.compareTo(other.assetPath);
}

class LLIcon extends StatelessWidget {
  const LLIcon({
    required this.iconData,
    this.color,
    this.fit,
    this.height,
    super.key,
    this.width,
  });

  const LLIcon.sized({
    required this.iconData,
    required double size,
    this.color,
    this.fit,
    super.key,
  })  : height = size,
        width = size;

  final Color? color;
  final BoxFit? fit;
  final double? height;
  final LLIconData iconData;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconData.assetPath,
      colorFilter: color == null
          ? null
          : ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            ),
      fit: fit ?? BoxFit.contain,
      height: height,
      package: 'assets',
      width: width,
    );
  }
}
