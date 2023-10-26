import 'package:bank_card/src/feature/registration_page/account_setup/user/widgets/bottomsheet.dart';
import 'package:flutter/material.dart';

import '../../../../common/style/app_colors.dart';
import 'widgets/circle_image.dart';
import 'widgets/custom_appbar.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  String loginFill = '';
  String numberFill = '';
  final String _email = 'jonathan@email.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            const CustomAppBar(),
            const SizedBox(height: 35),
            const CircleImage(),
            const SizedBox(height: 20),
            Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 100,
                    width: 330,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      onSubmitted: (value) {
                        setState(() {});
                        loginFill = value;
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
                      keyboardType: TextInputType.number,
                      onSubmitted: (value) {
                        setState(() {});
                        numberFill = value;
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
                        suffixIcon: Icon(Icons.call_outlined),
                        suffixIconColor: AppColors.darkGrey,
                        hintText: "mobile number",
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 70,
                    width: 330,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: AppColors.deepBlue,
                    ),
                    child: ListTile(
                      title: Text(
                        _email,
                        style: const TextStyle(
                            fontFamily: "Monserrat",
                            color: AppColors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      trailing: const Icon(
                        Icons.email_outlined,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: () {
                    (loginFill.isNotEmpty && numberFill.isNotEmpty)
                        ? showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return const CustomBottomSheet();
                            })
                        : null;
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 60),
                    backgroundColor: AppColors.limeGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      (loginFill.isNotEmpty && numberFill.isNotEmpty)
                          ? "Finish"
                          : "Next",
                      style: const TextStyle(
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
