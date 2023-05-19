// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../values/app_colors.dart';
import '../../values/text_styles.dart';

enum ButtonSize {
  /// height == 50
  large,

  /// height == 36
  small,

  /// height == 30
  extraSmall;

  double get height {
    switch (this) {
      case large:
        return 50;
      case small:
        return 36;
      case extraSmall:
        return 30;
    }
  }

  TextStyle get primaryTextStyle {
    switch (this) {
      case large:
        return TextStyles.bold14_FFFFFF_primaryButton;
      case small:
        return TextStyles.bold12_FFFFFF_smallPrimaryButton;
      case extraSmall:
        return TextStyles.bold12_FFFFFF_smallPrimaryButton;
    }
  }

  TextStyle get secondaryTextStyle {
    switch (this) {
      case large:
        throw UnimplementedError('No TextStyle for large SecondaryButton');
      case small:
      case extraSmall:
        return TextStyles.bold12_primary359EC7_smallSecondaryButton;
    }
  }

  TextStyle get tertiaryTextStyle {
    switch (this) {
      case large:
        throw UnimplementedError('No TextStyle for large TertiaryButton');
      case small:
      case extraSmall:
        return TextStyles.bold12_F04F4F;
    }
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.enable = true,
    required this.title,
    required this.onTap,
    this.width,
    this.showLoading = false,
    this.buttonSize = ButtonSize.large,
    this.backgroundColor = AppColors.c359EC7_primary,
    //this.fontSize = 14,
  }) : super(key: key);

  final bool enable;
  final String title;
  final VoidCallback onTap;
  final double? width;
  final bool showLoading;
  final ButtonSize buttonSize;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final double height = buttonSize.height;
    return Container(
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height),
        color: enable ? backgroundColor : backgroundColor.withOpacity(0.3),
      ),
      child: InkWell(
        onTap: enable ? onTap : null,
        child: Center(
          child: showLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: AppColors.cFFFFFF_onPrimary,
                  ),
                )
              : Text(
                  title,
                  style: buttonSize.primaryTextStyle,
                ),
        ),
      ),
    );
  }
}
