import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../resources/costom_widgit.dart';
import '../../resources/routes_manager.dart';
import '../../resources/values_manager.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 35,
            right: 20,
            bottom: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF9A84D).withOpacity(.1),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Color(0xffDA6317),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSize.s20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter 4-digit Verification code ',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.text,
                        fontSize: 30,
                      ),
                ),
              ),
              const SizedBox(height: AppSize.s20),
              Text(
                'Code send to +6282045**** . This code will expired in 01:30',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.grey,
                      fontSize: 12,
                    ),
              ),
              const SizedBox(height: AppSize.s40),
              Container(
                width: 347,
                height: 103,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFE5E5E5),
                      spreadRadius: 0,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE5E5E5),
                ),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Center(
                    child: Wrap(
                      children: List.generate(4, (index) {
                        return Container(
                          padding: const EdgeInsets.all(25),
                          child: Text(
                            index.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: ColorManager.text,
                                  fontSize: 33,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSize.s20),
              const Spacer(),
              MyButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.resetPassordScreenRoute);
                },
                text: 'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
