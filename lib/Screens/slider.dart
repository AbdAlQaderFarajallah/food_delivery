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
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

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
    //
    Matrix4 matrix4 = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans = _height + (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTrans = _height + (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans = _height + (1 - currentScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else {
      var currentScale = 0.8;
      matrix4 = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix4,
      child: Stack(
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
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
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
      ),
    );
  }
}
