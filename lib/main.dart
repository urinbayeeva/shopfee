import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopfee/controller/lang_controller.dart';
import 'package:shopfee/controller/lang_notifier.dart';
import 'package:shopfee/lang_service/app_lang.dart';
import 'package:shopfee/router/go_router_use.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InheritedLocalNotifier(
      localController: localeController,
      child: Builder(builder: (context) {
        return MaterialApp.router(
          theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
          locale: InheritedLocalNotifier.maybeOf(context)?.appLocale ??
              const Locale('en', 'US'),
          supportedLocales: const [
            Locale("uz", "UZ"),
            Locale("en", "US"),
          ],
          localizationsDelegates: const [
            AppLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          debugShowCheckedModeBanner: false,
          routerConfig: AppGoRouter.goRouter,
        );
      }),
    );
  }
}
