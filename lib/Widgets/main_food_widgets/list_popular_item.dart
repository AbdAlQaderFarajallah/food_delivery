import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/text_widgets/big_text.dart';
import 'package:food_delivery/Widgets/text_widgets/small_text.dart';
import 'package:food_delivery/controllers/recommended_product_controller.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_constants.dart';
import 'icon_and_text_widget.dart';

class ListPopularItem extends StatelessWidget {
  const ListPopularItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecommendedProductController>(
        builder: (recommendedProduct) {
      return recommendedProduct.isLoaded
          ? ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recommendedProduct.recommendedProductList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width30,
                      right: Dimensions.width30,
                      bottom: Dimensions.height15),
                  child: Row(
                    children: [
                      //  image section
                      Container(
                        width: Dimensions.listViewImageSize,
                        height: Dimensions.listViewImageSize,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius20),
                          color: Colors.redAccent,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(AppConstants.baseURL +
                                AppConstants.uploadURL +
                                recommendedProduct
                                    .recommendedProductList[index].img!),
                          ),
                        ),
                      ),

                      //   text container
                      Expanded(
                        child: Container(
                          height: Dimensions.listViewTextContainerSize,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius20),
                              bottomRight: Radius.circular(Dimensions.radius20),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: Dimensions.width10,
                                top: Dimensions.width10,
                                right: Dimensions.width10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(
                                    text: recommendedProduct
                                        .recommendedProductList[index].name!),
                                SizedBox(height: Dimensions.height10),
                                SmallText('With chinese characteristics'),
                                SizedBox(height: Dimensions.height10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
              },
            )
          : const CircularProgressIndicator(
              color: AppColors.mainColor,
            );
    });
  }
}
