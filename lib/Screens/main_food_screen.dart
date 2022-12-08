import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/slider.dart';
import 'package:food_delivery/Widgets/big_text.dart';
import 'package:food_delivery/Widgets/small_text.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/utils/dimensions.dart';

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
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
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
                      height: Dimensions.height45,
                      width: Dimensions.width45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
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
