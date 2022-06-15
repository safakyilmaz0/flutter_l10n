import 'package:flutter/material.dart';
import 'package:flutter_l10n/homepage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart"
    show AppLocalizations;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'EN'), // English,
        Locale('tr', 'TR'), // Turkish,
      ],
      home: const HomePage(),
    );
  }
}
