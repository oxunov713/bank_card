import 'package:flutter/material.dart';

import '../../../../common/style/app_colors.dart';
import '../user/user.dart';
import 'widgets/mastercard.dart';
import 'widgets/payment_method.dart';
import 'widgets/paypal.dart';
import 'widgets/visa.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final String _cardNumber = "1234567812345678";
  final String _cardDate = "01/27";
  final String _cardName = "Abuzer Firdousi";

  bool _isTapPaypal = true;
  bool _isTapMaster = false;
  bool _isTapVisa = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.white,
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PaymentMethod(
                cardNumber: _cardNumber,
                cardName: _cardName,
                cardDate: _cardDate),
            Row(
              children: [
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    _isTapPaypal = !_isTapPaypal;
                    _isTapMaster = false;
                    _isTapVisa = false;
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                      color: _isTapPaypal
                          ? AppColors.deepBlue
                          : AppColors.softGrey2,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          _isTapPaypal
                              ? "assets/image/icons/paypal.png"
                              : "assets/image/icons/paypal_blue.png",
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          "Paypal",
                          style: TextStyle(
                              color: _isTapPaypal
                                  ? AppColors.white
                                  : AppColors.mediumGrey,
                              fontFamily: "Rale",
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    _isTapPaypal = false;
                    _isTapMaster = !_isTapMaster;
                    _isTapVisa = false;
                  },
                  child: Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      color: _isTapMaster
                          ? AppColors.deepBlue
                          : AppColors.softGrey2,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          _isTapMaster
                              ? "assets/image/icons/mastercard.png"
                              : "assets/image/icons/mastercard_normal.png",
                          height: 20,
                          width: 20,
                        ),
                        Text(
                          "Mastercard",
                          style: TextStyle(
                              color: _isTapMaster
                                  ? AppColors.white
                                  : AppColors.mediumGrey,
                              fontFamily: "Rale",
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    _isTapPaypal = false;
                    _isTapMaster = false;
                    _isTapVisa = !_isTapVisa;
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color:
                          _isTapVisa ? AppColors.deepBlue : AppColors.softGrey2,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/image/icons/visa_normal.png",
                          height: 35,
                          width: 35,
                        ),
                        Text(
                          "Visa",
                          style: TextStyle(
                              color: _isTapVisa
                                  ? AppColors.white
                                  : AppColors.mediumGrey,
                              fontFamily: "Rale",
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: _isTapPaypal
                  ? PayPal()
                  : _isTapMaster
                      ? MasterCard()
                      : const Visa(),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const User()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 60),
                    backgroundColor: AppColors.limeGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
