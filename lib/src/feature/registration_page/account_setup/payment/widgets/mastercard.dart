import 'package:flutter/material.dart';

import '../../../../../common/style/app_colors.dart';

class MasterCard extends StatefulWidget {
  MasterCard({super.key});

  @override
  State<MasterCard> createState() => _MasterCardState();
}

class _MasterCardState extends State<MasterCard> {
  late String _mastercardLogin;

  late String _mastercard;
  DateTime? _masterDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            height: 100,
            width: 330,
            child: TextField(
              keyboardType: TextInputType.text,
              onSubmitted: (value) {
                _mastercardLogin = value;
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
              keyboardType: TextInputType.text,
              onSubmitted: (value) {
                _mastercard = value;
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
                suffixIcon: Icon(Icons.credit_card_outlined),
                suffixIconColor: AppColors.darkGrey,
                hintText: "Card",
              ),
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 100,
                width: 190,
                child: TextField(
                  keyboardType: TextInputType.text,
                  onSubmitted: (value) {},
                  decoration: InputDecoration(
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
                    suffixIcon: IconButton(
                      onPressed: () => showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2200),
                      ).then((value) {
                        setState(() {
                          _masterDate = value;
                        });
                      }),
                      icon: Icon(Icons.date_range_outlined),
                    ),
                    suffixIconColor: AppColors.darkGrey,
                    hintText: "$_masterDate".substring(0, 10),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                width: 130,
                child: TextField(
                  keyboardType: TextInputType.number,
                  onSubmitted: (value) {
                    _mastercard = value;
                  },
                  decoration: InputDecoration(
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
                    prefixIcon: Icon(Icons.credit_card_outlined),
                    prefixIconColor: AppColors.darkGrey,
                    hintText: "CVV",
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
