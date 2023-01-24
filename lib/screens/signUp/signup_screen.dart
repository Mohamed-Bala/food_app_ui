import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/costom_widgit.dart';
import '../../resources/font_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/values_manager.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final emali = TextEditingController();
  final pass = TextEditingController();
  final anamwp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 0.0,
        //   foregroundColor: Colors.black,
        //   automaticallyImplyLeading: true,
        // ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  ImageAssets.splashLogo,
                  height: 203,
                  width: 188,
                ),
              ),
              const SizedBox(height: AppSize.s40),
              Text(
                'Sign Up For Free ',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.text,
                      fontSize: 30,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSize.s20),
              TextFormWidget(
                controller: anamwp,
                text: 'Anamwp ..|',
                prefixIcon: Image.asset(
                  'assets/images/Profile.png',
                  color: ColorManager.primary,
                  height: 22,
                  width: 22,
                ),
                validator: () {},
                textInputType: TextInputType.name,
              ),
              const SizedBox(height: AppSize.s20),
              TextFormWidget(
                controller: emali,
                text: 'Email',
                prefixIcon: Image.asset(
                  'assets/images/Message.png',
                  color: ColorManager.primary,
                  height: 22,
                  width: 22,
                ),
                validator: () {},
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: AppSize.s20),
              TextFormWidget(
                controller: pass,
                obscureText: true,
                text: 'Password',
                suffixIcon: Image.asset(
                  'assets/images/Show.png',
                  //  color: ColorManager.primary,
                ),
                prefixIcon: Image.asset(
                  'assets/images/Lock.png',
                  color: ColorManager.primary,
                  height: 22,
                  width: 22,
                ),
                validator: () {},
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: AppSize.s10),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: ColorManager.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: AppSize.s10),
                        Text(
                          'Keep Me Signed In',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                    fontFamily: FontConstants.fontFamily,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.s10),
                    Row(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: ColorManager.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: AppSize.s10),
                        Text(
                          'Email Me About Special Pricing',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: ColorManager.grey,
                                    fontSize: 14,
                                    fontFamily: FontConstants.fontFamily,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.s40),
              MyButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.signupProcessScreenRoute);
                },
                text: 'Create Account',
              ),
              const SizedBox(height: AppSize.s20),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.loginRoute);
                },
                child: Text(
                  'already have an account?',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.primary,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
              const SizedBox(height: AppSize.s10),
            ],
          ),
        ),
      ),
    );
  }
}
