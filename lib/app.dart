import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries_app/theme/theme.dart';

final _router = GoRouter(
  routes: [],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      data: MediaQuery.of(context).platformBrightness == Brightness.light
          ? lightTheme
          : darkTheme,
      child: Builder(
        builder: (context) {
          return ColoredBox(
            color: AppTheme.of(context).surface.primary,
            child: SafeArea(
              child: WidgetsApp.router(
                debugShowCheckedModeBanner: false,
                color: lightTheme.surface.primary,
                routerConfig: _router,
                title: 'Grocery App',
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
              ),
            ),
          );
        },
      ),
    );
  }
}
