import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:groceries_app/widgetbook.group.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Typography', type: AppThemeData)
Widget buildTypographyThemeDataUseCase(BuildContext context) {
  const data = 'The lazy dog jumped over the quick brown fox';
  return WidgetbookGroup(
    label: 'Typography',
    children: [
      Text(data, style: AppTheme.of(context).typography.displayRegular32),
      Text(data, style: AppTheme.of(context).typography.headingSemibold20),
      Text(data, style: AppTheme.of(context).typography.headingMedium24),
      Text(data, style: AppTheme.of(context).typography.bodyRegular12),
      Text(data, style: AppTheme.of(context).typography.bodyRegular14),
      Text(data, style: AppTheme.of(context).typography.bodyMedium16),
      Text(data, style: AppTheme.of(context).typography.bodySemiBold16),
      Text(data, style: AppTheme.of(context).typography.labelMedium11),
      Text(data, style: AppTheme.of(context).typography.labelMedium14),
      Text(data, style: AppTheme.of(context).typography.subheadingRegular16),
      Text(data, style: AppTheme.of(context).typography.subheadingMedium20),
      Text(data, style: AppTheme.of(context).typography.logoSemiBold20),
    ],
  );
}

class TypographyThemeData {
  final TextStyle displayRegular32;
  final TextStyle headingSemibold20;
  final TextStyle headingMedium24;
  final TextStyle bodyRegular12;
  final TextStyle bodyRegular14;
  final TextStyle bodyMedium16;
  final TextStyle bodySemiBold16;
  final TextStyle labelMedium11;
  final TextStyle labelMedium14;
  final TextStyle subheadingRegular16;
  final TextStyle subheadingMedium20;
  final TextStyle logoSemiBold20;

  const TypographyThemeData({
    required this.logoSemiBold20,
    required this.displayRegular32,
    required this.headingSemibold20,
    required this.headingMedium24,
    required this.bodyRegular12,
    required this.bodyRegular14,
    required this.bodyMedium16,
    required this.bodySemiBold16,
    required this.labelMedium11,
    required this.labelMedium14,
    required this.subheadingRegular16,
    required this.subheadingMedium20,
  });

  factory TypographyThemeData.fromColor(
    Color fontColor,
  ) {
    return TypographyThemeData(
      logoSemiBold20: GoogleFonts.newsreader(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: fontColor,
          letterSpacing: 0.5,
          height: 20 / 24),
      displayRegular32: GoogleFonts.lora(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: fontColor,
        height: 28 / 32,
      ),
      headingSemibold20: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: fontColor,
        letterSpacing: 0.5,
        height: 24 / 20,
      ),
      headingMedium24: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: fontColor,
        height: 28 / 24,
      ),
      bodyRegular12: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: fontColor,
        letterSpacing: 0.5,
        height: 24 / 12,
      ),
      bodyRegular14: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: fontColor,
        letterSpacing: 0.25,
        height: 20 / 14,
      ),
      bodyMedium16: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: fontColor,
        letterSpacing: 0.25,
        height: 20 / 16,
      ),
      bodySemiBold16: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: fontColor,
        letterSpacing: 0.5,
        height: 24 / 16,
      ),
      labelMedium11: GoogleFonts.poppins(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: fontColor,
        letterSpacing: 0.1,
        height: 16 / 11,
      ),
      labelMedium14: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: fontColor,
        letterSpacing: 0.1,
        height: 20 / 14,
      ),
      subheadingRegular16: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: fontColor,
        letterSpacing: 0.5,
        height: 24 / 16,
      ),
      subheadingMedium20: GoogleFonts.poppins(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: fontColor,
        letterSpacing: 0.5,
        height: 24 / 20,
      ),
    );
  }
}
