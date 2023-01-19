import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/food_details_screen.dart';
import 'package:food_delivery/Screens/launch_screen.dart';
import 'package:food_delivery/Screens/login_screen.dart';
import 'package:food_delivery/Screens/main_food_screen.dart';
import 'package:food_delivery/Screens/register_screen.dart';
import 'package:food_delivery/controllers/recommended_product_controller.dart';
import 'package:get/get.dart';

import 'Screens/recommended_food_details_screen.dart';
import 'controllers/popular_product_controller.dart';
import 'helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/main_food_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/register_screen': (context) => const RegisterScreen(),
        '/main_food_screen': (context) => const MainFoodScreen(),
        '/food_details_screen': (context) => const FoodDetailsScreen(),
        '/recommended_food_details_screen': (context) =>
            const RecommendedFoodDetailsScreen(),
      },
    );
  }
}
