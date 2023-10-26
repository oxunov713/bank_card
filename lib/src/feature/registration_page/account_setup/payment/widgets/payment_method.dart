import 'package:flutter/material.dart';

import '../../../../../common/style/app_colors.dart';
import '../../user/user.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod(
      {super.key,
      required this.cardNumber,
      required this.cardName,
      required this.cardDate});

  final String cardNumber;
  final String cardName;
  final String cardDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.softGrey,
                ),
                child: const Icon(Icons.arrow_back_ios_new,
                    color: AppColors.darkGrey),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => User(),
                    )),
                child: Container(
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
              ),
            ],
          ),
          const SizedBox(height: 60),
          const Text(
            "Add your",
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 25,
              color: AppColors.darkGrey,
            ),
          ),
          const Text(
            "payment method",
            style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: AppColors.midnightBlue,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "You can edit this later on your account setting.",
            style: TextStyle(
              fontFamily: "DM Sans",
              fontSize: 12,
              color: AppColors.mediumGrey,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            height: 190,
            width: 320,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: AppColors.cardGradientColors),
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 30, right: 7),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/image/icons/credit_chip.png",
                        height: 30,
                        width: 45,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/image/icons/touch.png",
                            height: 30,
                            width: 45,
                          ),
                          Image.asset(
                            "assets/image/icons/contacties.png",
                            height: 30,
                            width: 45,
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(3)),
                              border: Border.all(
                                  width: 1.2, color: AppColors.black),
                            ),
                            child: const Row(
                              children: [
                                Icon(Icons.apple),
                                Text(
                                  "Pay",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 30,
                            decoration: const BoxDecoration(
                              color: AppColors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 3,
                                ),
                                Image.asset(
                                  "assets/image/icons/google.png",
                                  height: 20,
                                  width: 20,
                                ),
                                const Text("Pay"),
                                const SizedBox(
                                  width: 6,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 26),
                  Text(
                    "**** **** **** ${cardNumber.substring(12, 16)}",
                    style: const TextStyle(
                      fontFamily: "OCR",
                      color: AppColors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Text(
                        "VALID\nTHRU",
                        style: TextStyle(
                            fontFamily: "IBM",
                            color: AppColors.white,
                            fontSize: 7),
                      ),
                      const SizedBox(width: 7),
                      Text(
                        cardDate,
                        style: const TextStyle(
                            fontFamily: "OCR",
                            color: AppColors.white,
                            fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cardName,
                        style: const TextStyle(
                            fontFamily: "OCR",
                            color: AppColors.white,
                            fontSize: 18),
                      ),
                      Image.asset(
                        "assets/image/icons/mastercard.png",
                        height: 30,
                        width: 50,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
