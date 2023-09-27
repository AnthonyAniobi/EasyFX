import 'package:easyfx/core/data/models/language.dart';
import 'package:easyfx/core/presentation/blocs/language/language_bloc.dart';
import 'package:easyfx/core/presentation/blocs/navigation_tab/navigation_tab_bloc.dart';
import 'package:easyfx/core/presentation/blocs/theme/theme_bloc.dart';
import 'package:easyfx/core/presentation/pages/tab_overlay.dart';
import 'package:easyfx/core/theme/app_theme_data.dart';
import 'package:easyfx/features/add_money/presentation/bloc/add_money_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Locale fromLanguge(Language language) => Locale(language.languageCode, '');

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LanguageBloc>(
          create: (context) => LanguageBloc(),
        ),
        BlocProvider<NavigationTabBloc>(
          create: (context) => NavigationTabBloc(),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider<AddMoneyBloc>(
          create: (context) => AddMoneyBloc(),
        ),
      ],
      child: ResponsiveSizer(builder: (context, orientation, screenType) {
        return BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, languageState) {
            return BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, themeState) {
                return MaterialApp(
                  title: 'Easy Fx',
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  locale: fromLanguge(languageState.language),
                  theme: AppThemeData().lightTheme,
                  darkTheme: AppThemeData().darkTheme,
                  themeMode: themeState.themeMode,
                  home: TabOverlay(),
                );
              },
            );
          },
        );
      }),
    );
  }
}
