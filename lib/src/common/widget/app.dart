import 'package:bank_card/src/feature/registration_page/account_setup/payment/payment.dart';
import 'package:flutter/material.dart';

import '../../feature/home_page/widget/home_page.dart';
import '../../feature/registration_page/account_setup/user/user.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    home: const Payment(),
    );
  }
}
