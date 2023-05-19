import 'package:flutter/material.dart';

import '/app/core/values/app_colors.dart';

const defaultFontFamily = 'Outfit';
const defaultFontFamilyFallback = [
  'NotoSansJP',
  //'ZenMaruGothic',
];

abstract class FontW {
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const bold = FontWeight.w700;
}

abstract class TextStyles {
  static const _regular10_15 = TextStyle(
    fontWeight: FontW.regular,
    fontSize: 10,
    letterSpacing: 1.5,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
    height: 1.3,
  );

  static final regular10_15_FFFFFF_h13_white =
      _regular10_15.copyWith(color: AppColors.cFFFFFF_onBottomBarSurface);

  static const _medium10_05 = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 10,
    letterSpacing: 0.5,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
    height: 1.6,
  );

  /// medium 10pt 0.5pt
  static final medium10_chip = _medium10_05;

  /// medium 10pt 0.5pt
  static final medium10_weekday = _medium10_05;

  /// medium 10pt 0.5pt
  static final medium10_small = _medium10_05;

  /// medium 10pt 0.5pt 888888
  static final medium_10_888888_subtitle =
      _medium10_05.copyWith(color: AppColors.c888888_greyLabel);

  /// medium 10pt 0.5pt 888888
  static final medium10_888888_tip =
      _medium10_05.copyWith(color: AppColors.c888888_hintOnSurface);

  /// medium 10pt 0.5pt FFFFFF
  static final medium10_FFFFFF_bottomBarLabel = _medium10_05.copyWith(
    color: AppColors.cFFFFFF_onBottomBarSurface,
  );

  static const _medium10_10 = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 10,
    letterSpacing: 1.0,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// Medium, 10pt, 1pt, 888888
  static final medium10_888888_smallHint = _medium10_10.copyWith(
    color: AppColors.c888888_hintOnSurface,
  );

  static const _medium12_06 = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 12,
    letterSpacing: 0.6,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
    height: 1.833,
  );

  /// Medium, 12pt, 0.6pt
  static const medium12_defaultStyle = _medium12_06;

  /// medium 12pt 0.6pt BFBFBF
  static final medium12_BFBFBF_searchHint = _medium12_06.copyWith(
    color: AppColors.cBFBFBF_hintOnInputSurface,
  );

  /// Medium, 12pt, 0.6pt, BFBFBF
  static final medium12_BFBFBF_noData =
      _medium12_06.copyWith(color: AppColors.cBFBFBF_onSurfaceInactive);

  /// Medium, 12pt, 0.6pt, BFBFBF
  static final medium12_BFBFBF_inputHint =
      _medium12_06.copyWith(color: AppColors.cBFBFBF_onSurfaceInactive);

  /// Medium, 12pt, 0.6pt, 888888
  static final medium12_888888_tabInactive =
      _medium12_06.copyWith(color: AppColors.c888888_onTabSurface);

  /// Medium, 12pt, 0.6pt, 888888
  static final medium12_888888_inputLabel =
      _medium12_06.copyWith(color: AppColors.c888888_hintOnSurface);

  /// Medium, 12pt, 0.6pt, 888888, line-height: 22
  static final medium12_888888_h22_cardContents = _medium12_06.copyWith(
      color: AppColors.c888888_hintOnSurface, height: 1.833);

  /// Medium, 12pt, 0.6pt, 666666
  static final medium12_666666_otherMenuItem =
      _medium12_06.copyWith(color: AppColors.c666666_lightGrey);

  /// Medium, 12pt, 0.6pt, 666666, line-height: 22
  static final medium12_666666_h22_contents =
      _medium12_06.copyWith(color: AppColors.c666666_lightGrey, height: 1.833);

  static final medium13_065_c1D1D1D = _medium13_065;

  static const _medium13_065 = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 13,
    letterSpacing: 0.65,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// Medium, 13pt, 0.65pt, height 19
  static final medium13_label = _medium13_065.copyWith(height: 1.462);

  /// Medium, 13pt, 0.65pt, primary, height 19
  static final medium13_primary359EC7_textlink =
      _medium13_065.copyWith(color: AppColors.c359EC7_primary, height: 1.462);

  /// Medium, 13pt, 0.65pt BFBFBF
  static final medium13_BFBFBF_hint =
      _medium13_065.copyWith(color: AppColors.cBFBFBF_onSurfaceInactive);

  static const _medium13_13 = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 13,
    letterSpacing: 1.3,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// Medium, 13pt, 1.3pt F04F4F
  static final medium13_13_F04F4F_editTextError = _medium13_13.copyWith(
    color: AppColors.cF04F4F_error,
  );

  static const _medium14_07 = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 14,
    letterSpacing: 0.7,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// Medium, 14pt, 0.7pt
  static const medium14_date = _medium14_07;

  static const _medium20_10 = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 20,
    letterSpacing: 1.0,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// Medium, 20pt, 1pt, F04F4F
  static final medium20_F04F4F_error =
      _medium20_10.copyWith(color: AppColors.cF04F4F_error);

  /// Medium, 20pt, 1pt, F04F4F
  static final medium20_F04F4F_requiredStar =
      _medium20_10.copyWith(color: AppColors.cF04F4F_error);

  static const _bold10_05 = TextStyle(
    fontWeight: FontW.bold,
    fontSize: 10,
    letterSpacing: 0.5,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// Bold 10px 0.5px
  static final bold10_cardItem = _bold10_05;

  /// Bold 10px 0.5px
  static final bold10_step = _bold10_05;

  /// Bold 10px 0.5px
  static final bold10_888888_grayLabel =
      _bold10_05.copyWith(color: AppColors.c888888_greyLabel);

  /// Bold 10px 0.5px primary 359EC7
  static final bold10_primary359EC7_readMore =
      _bold10_05.copyWith(color: AppColors.c359EC7_primary);

  /// Bold 10px 0.5px white
  static final bold10_FFFFFF_fab =
      _bold10_05.copyWith(color: AppColors.cFFFFFF_onPrimary);

  static const _bold12_06 = TextStyle(
    fontWeight: FontW.bold,
    fontSize: 12,
    letterSpacing: 0.6,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// Bold, 12pt 0.6pt
  static const bold12_menuItem = _bold12_06;

  /// Bold, 12pt 0.6pt
  static const name = _bold12_06;

  /// Bold, 12pt 0.6pt primary 359EC7
  static final bold12_primary359EC7_tabActive =
      _bold12_06.copyWith(color: AppColors.c359EC7_primary);

  /// Bold, 12pt 0.6pt primary 359EC7
  static final bold12_primary359EC7_backButton =
      _bold12_06.copyWith(color: AppColors.c359EC7_primary);

  /// Bold, 12pt 0.6pt primary 359EC7
  static final bold12_primary359EC7_smallSecondaryButton =
      _bold12_06.copyWith(color: AppColors.c359EC7_primary);

  /// Bold, 12pt 0.6pt F04F4F
  static final bold12_F04F4F =
      _bold12_06.copyWith(color: AppColors.cF04F4F_error);

  /// Bold, 12pt 0.6pt FFFFFF
  static final bold12_FFFFFF_smallPrimaryButton =
      _bold12_06.copyWith(color: AppColors.cFFFFFF_onPrimary);

  /// Bold, 12pt 0.6pt 888888, height 18px
  static final bold12_888888_onTabSurface =
      _bold12_06.copyWith(color: AppColors.c888888_onTabSurface, height: 1.5);

  static const _bold14_07 = TextStyle(
    fontWeight: FontW.bold,
    fontSize: 14,
    letterSpacing: 0.7,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// Bold 14pt 0.7pt
  static const bold14_appBarTitle = _bold14_07;

  /// Bold 14pt 0.7pt
  static const bold14_heading2 = _bold14_07;

  /// Bold 14pt 0.7pt
  static const bold14_cardTitle = _bold14_07;

  /// Bold 14pt 0.7pt
  static const bold14_listItem = _bold14_07;

  /// Bold 14pt 0.7pt
  static final bold14_titleBold = _bold14_07;

  /// Bold 14pt 0.7pt FFFFFF
  static final bold14_FFFFFF_primaryButton =
      _bold14_07.copyWith(color: AppColors.cFFFFFF_onPrimary);

  /// Bold 14pt 0.7pt primary 359EC7, height=1.45
  static final bold14_primary359EC7_addMore = _bold14_07.copyWith(
    color: AppColors.c359EC7_primary,
    height: 1.45,
  );

  /// Bold 14pt 0.7pt #AED8E9, height=1.45
  static final bold14_AED8E39_primary30 = _bold14_07.copyWith(
    color: AppColors.cAED8E9_primary30,
    height: 1.45,
  );

  static const _bold14_14 = TextStyle(
    fontWeight: FontW.bold,
    fontSize: 14,
    letterSpacing: 1.4,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// Bold, 14pt, 1.4pt, primary 359EC7
  static final bold14_14_primary359EC7_forgotPassword =
      _bold14_14.copyWith(color: AppColors.c359EC7_primary);

  static const _bold16_08 = TextStyle(
    fontWeight: FontW.bold,
    fontSize: 16,
    letterSpacing: 0.8,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
    height: 1.25,
  );

  /// bold 16pt 0.8pt
  static final bold16_bold = _bold16_08;

  /// Bold 16pt 0.8pt
  static const bold16_heading1 = _bold16_08;

  /// Bold 16pt 0.8pt
  static final bold16_AED8E9_QA =
      _bold16_08.copyWith(color: AppColors.cAED8E9_primary30);

  static const _medium16_08 = TextStyle(
    fontWeight: FontW.medium,
    fontSize: 14,
    letterSpacing: 0.5,
    color: AppColors.c1D1D1D_onSurface,
    fontFamilyFallback: defaultFontFamilyFallback,
    height: 1.25,
  );

  static final medium16_default = _medium16_08;

  static const _bold18_09 = TextStyle(
    fontWeight: FontW.bold,
    fontSize: 18,
    letterSpacing: 0.9,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// bold 18pt 0.9pt
  static final bold18_title = _bold18_09;

  /// bold 18pt 0.9pt
  static final bold18_stepNumber = _bold18_09;

  static const _bold20_10 = TextStyle(
    fontWeight: FontW.bold,
    fontSize: 20,
    letterSpacing: 1.0,
    color: AppColors.c1D1D1D_onSurface,
    fontFamily: defaultFontFamily,
    fontFamilyFallback: defaultFontFamilyFallback,
  );

  /// bold 20pt 1pt
  static const bold20_10_loginTitle = _bold20_10;

  /// medium 12pt height 30pt
  static final medium12_h30_modalContent =
      medium12_defaultStyle.copyWith(height: 2.5);

  /// medium 12pt height 30pt
  static final medium12_FFFFFF_h30_onBottomBarSurface = medium12_defaultStyle
      .copyWith(height: 2.5, color: AppColors.cFFFFFF_onBottomBarSurface);

  static final medium10_F04F4F =
      _medium10_05.copyWith(color: AppColors.cF04F4F_error);
}
