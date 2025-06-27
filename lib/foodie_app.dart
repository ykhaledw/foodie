import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:foodie/core/routing/app_router.dart';
import 'package:foodie/core/routing/routes.dart';
import 'package:foodie/generated/l10n.dart';

class FoodieApp extends StatelessWidget {
  final AppRouter appRouter;
  const FoodieApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Promaison',
      onGenerateRoute: appRouter.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white,fontFamily: 'Plus Jakarta Sans'),
      initialRoute: Routes.onboardingScreen,
    );
  }
}
