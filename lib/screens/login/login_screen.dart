import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_ui/resources/font_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/costom_widgit.dart';
import '../../resources/routes_manager.dart';
import '../../resources/values_manager.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final emali = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  ImageAssets.splashLogo,
                  height: 203.h,
                  width: 188.w,
                ),
              ),
              const SizedBox(height: AppSize.s40),
              Text(
                'Login To Your Account',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.text,
                      fontSize: 30,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSize.s40),
              TextFormWidget(
                controller: emali,
                text: 'Email',
                validator: () {},
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: AppSize.s20),
              TextFormWidget(
                controller: pass,
                obscureText: true,
                text: 'Password',
                validator: () {},
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: AppSize.s10),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.forgotPasswordRoute);
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      'Forgot Your Password',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ColorManager.primary,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSize.s20),
              Text(
                'Or Continue With',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: ColorManager.text,
                      fontSize: 16,
                      fontFamily: FontConstants.fontFamily,
                    ),
              ),
              const SizedBox(height: AppSize.s20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 152,
                    height: 57,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFE5E5E5),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/facebook-1.svg',
                        ),
                        const SizedBox(width: AppSize.s10),
                        Text(
                          'FaceBook',
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff09051C),
                                    fontSize: 16,
                                  ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 152,
                    height: 57,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFE5E5E5),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/google-icon 1.svg',
                        ),
                        const SizedBox(width: AppSize.s10),
                        Text(
                          'Google',
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff09051C),
                                    fontSize: 16,
                                  ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.s40),
              MyButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.homeRoute);
                },
                text: 'Login',
              ),
              const SizedBox(height: AppSize.s20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.registerRoute);
                },
                child: Text(
                  'Don\'t have an account?',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.primary,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
