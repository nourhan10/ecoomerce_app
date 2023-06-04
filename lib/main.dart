import 'package:ecommerce_application/providers/language_settings_provider.dart';
import 'package:ecommerce_application/screens/accountScreen/account_screen.dart';
import 'package:ecommerce_application/screens/accountScreen/change_language_screen.dart';
import 'package:ecommerce_application/screens/accountScreen/register_screen.dart';
// import 'package:ecommerce_application/screens/unused/account_screen2.dart';
// import 'package:ecommerce_application/screens/accountScreen/change_language_screen.dart';
// import 'package:ecommerce_application/screens/unused/forget_password_screen.dart';
// import 'package:ecommerce_application/screens/accountScreen/account_screen.dart';
// import 'package:ecommerce_application/screens/accountScreen/register_screen.dart';
// import 'package:ecommerce_application/screens/unused/sign_in_screen.dart';
// import 'package:ecommerce_application/screens/unused/sign_up_screen.dart';
import 'package:ecommerce_application/screens/bottom_navigation_bar_design.dart';
import 'package:ecommerce_application/screens/homeScreenContent/home_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => LanguageSettingsProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  late LanguageSettingsProvider languageProvider;

  @override
  Widget build(BuildContext context) {
    languageProvider = Provider.of(context);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(languageProvider.currentLocale),
      routes: {
        HomeScreenContent.routeName: (_) => HomeScreenContent(),
        AccountScreen.routeName: (_) => AccountScreen(),
        ChangeLanguageScreen.routeName: (_) => ChangeLanguageScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        // ModifiedAccount.routeName: (_) => ModifiedAccount(),
        // AccountScreen.routeName: (_) => AccountScreen(),
        // SignInScreen.routeName: (_) => SignInScreen(),
        // SignUpScreen.routeName: (_) => SignUpScreen(),
        // ForgetPasswordScreen.routeName: (_) => ForgetPasswordScreen()
      },
      home: BottomNavigationBarDesign(title: "Flutter Demo"),
    );
  }
}
