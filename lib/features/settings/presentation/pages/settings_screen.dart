import 'package:easyfx/core/data/models/language.dart';
import 'package:easyfx/core/presentation/blocs/language/language_bloc.dart';
import 'package:easyfx/core/presentation/blocs/theme/theme_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<ThemeBloc, ThemeState>(
                builder: (context, state) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.themeMode == ThemeMode.dark
                            ? AppLocalizations.of(context)!.switchToLightMode
                            : AppLocalizations.of(context)!.switchToDarkMode,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      CupertinoSwitch(
                          value: state.themeMode == ThemeMode.dark,
                          onChanged: (value) {
                            context.read<ThemeBloc>().add(ToggleThemeEvent());
                          }),
                    ],
                  );
                },
              ),
              BlocBuilder<LanguageBloc, LanguageState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.changeLanguage,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(width: 2.w),
                      DropdownButton<Language>(
                          value: state.language,
                          items: Language.all
                              .map((lang) => DropdownMenuItem<Language>(
                                  value: lang,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        lang.flagImage,
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                      SizedBox(width: 2.w),
                                      Text(
                                        lang.languageName,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ],
                                  )))
                              .toList(),
                          onChanged: (language) {
                            if (language != null) {
                              print(language.languageCode);
                              context.read<LanguageBloc>().add(
                                    ChangeLanguageEvent(language),
                                  );
                            }
                          }),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
