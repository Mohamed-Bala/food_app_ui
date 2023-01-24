import 'package:flutter/material.dart';
import 'package:food_delivery_ui/screens/home/home_screen.dart';
import 'package:food_delivery_ui/screens/onboarding/onboarding_screen.dart';
import 'package:food_delivery_ui/screens/profile/set_location_screen.dart';
import 'package:food_delivery_ui/screens/splash/splash_screen.dart';

import '../screens/chat/chat_details/chat_details_screen.dart';
import '../screens/filter/filter_screen.dart';
import '../screens/forgot_password/forgot_password_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/notification/notification_screen.dart';
import '../screens/otp/otp_screen.dart';
import '../screens/payment/payment_screen.dart';
import '../screens/payments_order_screen.dart';
import '../screens/profile/upload_photo_screen.dart';
import '../screens/reset_password/reset_password_screen.dart';
import '../screens/signUp/signup_process_screen.dart';
import '../screens/signUp/signup_screen.dart';
import '../screens/profile/upload_preview_screen.dart';
import 'strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String signupProcessScreenRoute = "/signupProcessScreen";
  static const String onBoardingRoute = "/onBoarding";
  static const String paymentScreenRoute = "/paymentScreen";
  static const String uploadPhotoScreenRoute = "/uploadPhotoScreen";
  static const String uploadPreviewScreenRoute = "/uploadPreviewScreenp";
  static const String setLocationScreenRoute = "/setLocationScreen";

  static const String forgotPasswordRoute = "/forgotPassword";
  static const String otpScreenRoute = "/otp";
  static const String resetPassordScreenRoute = "/ResetPassord";
  static const String homeRoute = "/home";
  static const String notificationRoute = "/notification";
  static const String chatDetailsRoute = "/chatDetails";
  static const String filterScreenRoute = "/filter";
  static const String paymentsOrderRoute = "/paymentsOrder";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case Routes.signupProcessScreenRoute:
        return MaterialPageRoute(builder: (_) => SignupProcessScreen());
      case Routes.paymentScreenRoute:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case Routes.uploadPhotoScreenRoute:
        return MaterialPageRoute(builder: (_) => const UploadPhotoScreen());
      case Routes.uploadPreviewScreenRoute:
        return MaterialPageRoute(builder: (_) => const UploadPreviewScreen());
      case Routes.setLocationScreenRoute:
        return MaterialPageRoute(builder: (_) => const SetLocationScreen());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case Routes.otpScreenRoute:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      case Routes.resetPassordScreenRoute:
        return MaterialPageRoute(builder: (_) => ResetPassordScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.notificationRoute:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case Routes.chatDetailsRoute:
        return MaterialPageRoute(builder: (_) => const ChatDetailsScreen());
      case Routes.filterScreenRoute:
        return MaterialPageRoute(builder: (_) => FilterScreen());
      case Routes.paymentsOrderRoute:
        return MaterialPageRoute(builder: (_) => const PaymentsOrderScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}
