import 'package:flutter/material.dart';

import '../../../../../common/style/app_colors.dart';


class PayPal extends StatelessWidget {
   PayPal({super.key});
  late String _paypalLogin;
  late String _paypalEmail;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Center(
          child: SizedBox(
            height: 100,
            width: 330,
            child: TextField(
              keyboardType: TextInputType.text,
              onSubmitted: (value) {
                _paypalLogin = value;
              },
              decoration: const InputDecoration(
                fillColor: AppColors.softGrey,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.softGrey,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: Icon(Icons.person),
                suffixIconColor: AppColors.darkGrey,
                hintText: "Login",
              ),
            ),
          ),
        ),
        Center(
          child: SizedBox(
            height: 100,
            width: 330,
            child: TextField(
              onSubmitted: (value) {
                _paypalEmail = value;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                fillColor: AppColors.softGrey,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.softGrey,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: Icon(Icons.email_outlined),
                suffixIconColor: AppColors.darkGrey,
                hintText: "Email",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
