import 'package:flutter/material.dart';

import '../../../../../common/style/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.softGrey,
                ),
                child: const Icon(Icons.arrow_back_ios_new,
                    size: 18, color: AppColors.darkGrey),
              ),
            ),
            Container(
              height: 43,
              width: 86,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: AppColors.softGrey,
              ),
              child: const Center(
                child: Text(
                  "skip",
                  style: TextStyle(
                    color: AppColors.deepMidnightBlue,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Monserrat",
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),
        RichText(
          text: const TextSpan(
              text: "Fill your  ",
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Lato",
                  fontSize: 25),
              children: [
                TextSpan(
                  text: "information",
                  style: TextStyle(
                      color: AppColors.deepBlue,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Lato",
                      fontSize: 25),
                ),
                TextSpan(
                  text: "\nbelow",
                  style: TextStyle(
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Lato",
                      fontSize: 25),
                ),
                TextSpan(
                  text: "\n\nYou can edit this later on your account setting.",
                  style: TextStyle(
                    fontFamily: "DM Sans",
                    fontSize: 12,
                    color: AppColors.mediumGrey,
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
