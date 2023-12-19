import 'package:financy_app/common/themes/default_theme.dart';
import 'package:financy_app/features/onboarding/onboarding_page.dart';
import 'package:financy_app/features/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

import 'common/constants/constants.dart';

import 'features/sign_up/sign_up.dart';
import 'features/splash/splash.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().defaultTheme,
      initialRoute: NamedRoute.splash,
      routes: {
        NamedRoute.initial: (context) => const OnboardingPage(),
        NamedRoute.splash: (context) => const SplashPage(),
        NamedRoute.signUp: (context) => const SignUpPage(),
        NamedRoute.signIn: (context) => const SignInPage(),
        // NamedRoute.home: (context) => const HomePageView(),
        // NamedRoute.stats: (context) => const StatsPage(),
        // NamedRoute.wallet: (context) => const WalletPage(),
        // NamedRoute.profile: (context) => const ProfilePage(),
        // NamedRoute.transaction: (context) {
        //   final args = ModalRoute.of(context)?.settings.arguments;
        //   // return TransactionPage(
        //   //   transaction: args != null ? args as TransactionModel : null,
        //   // );
        // },
      },
    );
  }
}
