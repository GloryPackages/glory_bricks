// Copyright (c) 2022, Glory. All rights reserved.
// https://glory-apps.com

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geeks_theme/geeks_theme.dart';

import '../core/route/router.dart';
import '../injection/injection_container.dart';
// import '../l10n/locale_keys.g.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);
  // final ApiClient apiClient;

  @override
  Widget build(BuildContext context) {
    return
        //  MultiBlocProvider(
        //   providers: [],
        //   child:
        GloryThemeProvider(
      themeDataProvider: injector.get<GloryTheme>(),
      child: const AppRootView(),
    );
    // );
  }
}

class AppRootView extends StatelessWidget {
  const AppRootView({Key? key}) : super(key: key);
  // final ApiClient apiClient;

  @override
  Widget build(BuildContext context) {
    // final isArabic =
    //     EasyLocalization.of(context)?.currentLocale == LocalControl.localAr;
    return MaterialApp.router(
      // title: LocaleKeys.appTitle.tr(),
      locale: context.locale,
      darkTheme: context.readTheme().themeDataProvider.darkTheme,
      theme: context.readTheme().themeDataProvider.lightTheme,
      themeMode: context.readTheme().currentThemeMode,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      routeInformationParser: MyRouter.router.routeInformationParser,
      routerDelegate: MyRouter.router.routerDelegate,
    );
  }
}
