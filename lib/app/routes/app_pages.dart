import 'package:taxi/app/screens/customer_detail/customer_detail_binding.dart';
import 'package:taxi/app/screens/customer_detail/customer_detail_screen.dart';
import 'package:taxi/app/screens/customer_for_google_map/customer_for_google_map_binding.dart';
import 'package:taxi/app/screens/customer_for_google_map/customer_for_google_map_screen.dart';
import 'package:taxi/app/screens/home/home_binding.dart';

import 'package:taxi/app/screens/past_rides/past_rides_binding.dart';
import 'package:taxi/app/screens/profile/profile_screen.dart';
import 'package:taxi/app/screens/search/search_binding.dart';
import 'package:taxi/app/screens/search/search_screen.dart';

import '../screens/home/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/past_rides/past_rides_screen.dart';
import '../screens/past_rides_for_google_map/past_rides_for_google_map_binding.dart';
import '../screens/past_rides_for_google_map/past_rides_for_google_map_screen.dart';
import '../screens/register/register_screen.dart';
import '../screens/splash/splash_binding.dart';
import '../screens/splash/splash_screen.dart';

import 'package:get/get.dart';

part 'app_routes.dart';

class AppRoutes {
  AppRoutes._();

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.register,
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: Routes.search,
      page: () => SearchScreen(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: Routes.pastRidesMap,
      page: () => PastRidesForGoogleMapScreen(),
      binding: PastRidesForGoogleMapBinding(),
    ),
    GetPage(
      name: Routes.customerDetail,
      page: () => CustomerDetailScreen(),
      binding: CustomerDetailBinding(),
    ),
    GetPage(
      name: Routes.pastRides,
      page: () => PastRidesScreen(),
      binding: PastRidesBinding(),
    ),
    GetPage(
      name: Routes.customerMap,
      page: () => CustomerForGoogleMapScreen(),
      binding: CustomerForGoogleMapBinding(),
    ),
  ];
}
