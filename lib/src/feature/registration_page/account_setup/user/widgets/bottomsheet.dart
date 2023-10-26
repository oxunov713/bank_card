import 'package:flutter/material.dart';

import '../../../../../common/style/app_colors.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 475,
      width: 375,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 5,
            width: 60,
            decoration: const BoxDecoration(
              color: AppColors.mediumGrey,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  3,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Image.asset(
            "assets/image/icons/done.png",
            width: 140,
            height: 140,
          ),
          const SizedBox(height: 30),
          RichText(
            text: const TextSpan(
                text: "Account  ",
                style: TextStyle(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Lato",
                    fontSize: 25),
                children: [
                  TextSpan(
                    text: "successfully",
                    style: TextStyle(
                        color: AppColors.deepBlue,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Lato",
                        fontSize: 25),
                  ),
                  TextSpan(
                    text: "\n               created",
                    style: TextStyle(
                        color: AppColors.darkGrey,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Lato",
                        fontSize: 25),
                  ),
                  TextSpan(
                    text: "\n\nLorem ipsum dolor sit amet, consectetur.",
                    style: TextStyle(
                      fontFamily: "DM Sans",
                      fontSize: 12,
                      color: AppColors.mediumGrey,
                    ),
                  ),
                ]),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 70),
                backgroundColor: AppColors.limeGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Center(
                child: Text(
                  "Finish",
                  style: TextStyle(
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: AppColors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
