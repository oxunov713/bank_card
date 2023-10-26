
import 'package:flutter/material.dart';

import '../../../../../common/style/app_colors.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          const CircleAvatar(
            backgroundColor: AppColors.softGrey,
            radius: 60,
            child: Icon(
              Icons.person,
              color: AppColors.softGrey2,
              size: 70,
            ),
          ),
          Positioned(left: 80,top: 80,
            child: CircleAvatar(
                backgroundColor: AppColors.deepBlue,
                radius: 20,
                child: Image.asset(
                  "assets/image/icons/pencil.png",
                  height: 13,
                  width: 13,
                )),
          )
        ],
      ),
    );
  }
}
