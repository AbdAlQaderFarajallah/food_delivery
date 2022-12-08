import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/slider.dart';
import 'package:food_delivery/Widgets/big_text.dart';
import 'package:food_delivery/Widgets/small_text.dart';
import 'package:food_delivery/utils/app_colors.dart';

class MainFoodScreen extends StatefulWidget {
  const MainFoodScreen({Key? key}) : super(key: key);

  @override
  State<MainFoodScreen> createState() => _MainFoodScreenState();
}

class _MainFoodScreenState extends State<MainFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 45, bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText('Palestine'),
                      SmallText('Gaza'),
                    ],
                  ),
                  Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                      child: const Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliderScreen(),
        ],
      ),
    );
  }
}
