import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/main_food_widgets/slider.dart';
import 'package:food_delivery/utils/dimensions.dart';

import '../Widgets/main_food_widgets/list_popular_item.dart';
import '../Widgets/text_widgets/big_text.dart';
import '../utils/app_colors.dart';

class MainFoodScreen extends StatefulWidget {
  const MainFoodScreen({Key? key}) : super(key: key);

  @override
  State<MainFoodScreen> createState() => _MainFoodScreenState();
}

class _MainFoodScreenState extends State<MainFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Center(
            child: Container(
              margin: EdgeInsets.only(
                  right: Dimensions.width30, left: Dimensions.width30),
              height: Dimensions.height45,
              width: Dimensions.width45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: AppColors.mainColor,
              ),
              child: const Icon(Icons.search, color: Colors.white),
            ),
          ),
        ],
        leading: Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Center(
            child: BigText(text: 'Gaza'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.height10),
            const SliderScreen(),
            SizedBox(height: Dimensions.height30),
            Container(
              margin: EdgeInsets.only(left: Dimensions.width30),
              child: Row(
                children: [
                  BigText(text: 'Popular'),
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),
            const ListPopularItem(),
          ],
        ),
      ),
    );
  }
}
