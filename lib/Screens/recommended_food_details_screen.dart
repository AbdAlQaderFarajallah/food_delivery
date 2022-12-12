import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/app_icon.dart';
import 'package:food_delivery/Widgets/text_widgets/big_text.dart';
import 'package:food_delivery/Widgets/text_widgets/expandable_text_widget.dart';
import 'package:food_delivery/utils/app_colors.dart';

import '../utils/dimensions.dart';

class RecommendedFoodDetailsScreen extends StatelessWidget {
  const RecommendedFoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                child: Center(
                  child: BigText(text: 'Take a deep breath relax your fingers'),
                ),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/photo-3.jpeg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: const ExpandableTextWidget(
                      text:
                          'Take a deep breath, relax your fingers, and take it slow. You need to be focused and not annoyed when attempting the typing speed test. The best thing you can do to start typing faster is to type more. The more practice you get under your belt, the faster your ‘typing-fu’ will be. It’s all about developing muscle memory. Just make sure you are reinforcing good habits and not ones that will leave your fingers hurting after an intense typing session.Take a deep breath, relax your fingers, and take it slow. You need to be focused and not annoyed when attempting the typing speed test. The best thing you can do to start typing faster is to type more. The more practice you get under your belt, the faster your ‘typing-fu’ will be. It’s all about developing muscle memory. Just make sure you are reinforcing good habits and not ones that will leave your fingers hurting after an intense typing session.Take a deep breath, relax your fingers, and take it slow. You need to be focused and not annoyed when attempting the typing speed test. The best thing you can do to start typing faster is to type more. The more practice you get under your belt, the faster your ‘typing-fu’ will be. It’s all about developing muscle memory. Just make sure you are reinforcing good habits and not ones that will leave your fingers hurting after an intense typing session.Take a deep breath, relax your fingers, and take it slow. You need to be focused and not annoyed when attempting the typing speed test. The best thing you can do to start typing faster is to type more. The more practice you get under your belt, the faster your ‘typing-fu’ will be. It’s all about developing muscle memory. Just make sure you are reinforcing good habits and not ones that will leave your fingers hurting after an intense typing session.Take a deep breath, relax your fingers, and take it slow. You need to be focused and not annoyed when attempting the typing speed test. The best thing you can do to start typing faster is to type more. The more practice you get under your belt, the faster your ‘typing-fu’ will be. It’s all about developing muscle memory. Just make sure you are reinforcing good habits and not ones that will leave your fingers hurting after an intense typing session.Take a deep breath, relax your fingers, and take it slow. You need to be focused and not annoyed when attempting the typing speed test. The best thing you can do to start typing faster is to type more. The more practice you get under your belt, the faster your ‘typing-fu’ will be. It’s all about developing muscle memory. Just make sure you are reinforcing good habits and not ones that will leave your fingers hurting after an intense typing session.Take a deep breath, relax your fingers, and take it slow. You need to be focused and not annoyed when attempting the typing speed test. The best thing you can do to start typing faster is to type more. The more practice you get under your belt, the faster your ‘typing-fu’ will be. It’s all about developing muscle memory. Just make sure you are reinforcing good habits and not ones that will leave your fingers hurting after an intense typing session.Take a deep breath, relax your fingers, and take it slow. You need to be focused and not annoyed when attempting the typing speed test. The best thing you can do to start typing faster is to type more. The more practice you get under your belt, the faster your ‘typing-fu’ will be. It’s all about developing muscle memory. Just make sure you are reinforcing good habits and not ones that will leave your fingers hurting after an intense typing session.'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width30 * 4,
                right: Dimensions.width30 * 4,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
                BigText(text: '\$12.5   X   1', size: Dimensions.font26),
                AppIcon(
                  icon: Icons.add,
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.height45 * 2.7,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                right: Dimensions.height20,
                left: Dimensions.height20),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius20 * 2),
                topLeft: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      right: Dimensions.height20,
                      left: Dimensions.height20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      right: Dimensions.height20,
                      left: Dimensions.height20),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: BigText(
                    text: '\$12.5 | Add to cart',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
