// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      directories: directories,
      appBuilder: (context, child) => ColoredBox(
        color: const Color(0xFF404040),
        child: child,
      ),
      addons: [
        AccessibilityAddon(),
        AlignmentAddon(initialAlignment: Alignment.center),
        //GridAddon(10),
        InspectorAddon(enabled: true),
        LocalizationAddon(
          locales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          initialLocale: AppLocalizations.supportedLocales.last,
        ),
        TextScaleAddon(scales: [1.0, 1.5, 2.0], initialScale: 1.0),
        TimeDilationAddon(),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.ios.iPad,
            Devices.android.samsungGalaxyS20,
          ],
          initialDevice: Devices.ios.iPhone13,
        ),
        ZoomAddon(),
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: lightTheme,
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: darkTheme,
            ),
          ],
          themeBuilder: (context, theme, child) => ColoredBox(
            color: theme.surface.primary,
            child: DefaultTextStyle(
              style: theme.typography.bodyMedium16,
              child: AppTheme(
                data: theme,
                child: SafeArea(child: child),
              ),
            ),
          ),
        ),
      ],
      integrations: [
        WidgetbookCloudIntegration(),
      ],
    );
  }
}
