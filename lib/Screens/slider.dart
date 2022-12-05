import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/icon_and_text_widget.dart';
import 'package:food_delivery/Widgets/small_text.dart';
import 'package:food_delivery/app_colors.dart';

import '../Widgets/big_text.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _pageItem(position);
        },
      ),
    );
  }

  Widget _pageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF69c5df),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/photo-3.jpeg'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText('Chinese Side'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => const Icon(Icons.star,
                              color: AppColors.mainColor, size: 15),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SmallText('4.5'),
                      const SizedBox(width: 15),
                      SmallText('150'),
                      const SizedBox(width: 3),
                      SmallText('Comments'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
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
              ),
            ),
          ),
        ),
      ],
    );
  }
}
