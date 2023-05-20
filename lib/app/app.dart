import 'package:app_flutter_firebase/app/app_routes.dart';
import 'package:app_flutter_firebase/pages/initial.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Outfit',
        colorScheme: Theme.of(context).colorScheme
          .copyWith(background: const Color(0xff170409))
          .copyWith(
            primary: const Color(0xff00a8c6),
            secondary: const Color(0xff8fbe00),
            tertiary: const Color(0xff4e5861)
          )
      ),
      routes: {
        AppRoutes.home: (context) => const InitialPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}