import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/text_widgets/big_text.dart';
import 'package:food_delivery/Widgets/text_widgets/small_text.dart';

import '../utils/app_colors.dart';
import '../utils/dimensions.dart';
import 'main_food_widgets/icon_and_text_widget.dart';

class DetailsSide extends StatelessWidget {
  final String text;

  const DetailsSide({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(Icons.star,
                    color: AppColors.mainColor, size: 15),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            SmallText('4.5'),
            SizedBox(width: Dimensions.width15),
            SmallText('150'),
            const SizedBox(width: 3),
            SmallText('Comments'),
          ],
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              Icons.circle_sharp,
              'Normal',
              AppColors.iconColor1,
            ),
            IconAndTextWidget(
              Icons.location_on,
              '1.7Km',
              AppColors.mainColor,
            ),
            IconAndTextWidget(
              Icons.access_time_rounded,
              '32min',
              AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
