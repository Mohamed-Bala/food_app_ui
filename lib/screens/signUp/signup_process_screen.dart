import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../resources/costom_widgit.dart';
import '../../resources/routes_manager.dart';
import '../../resources/values_manager.dart';

class SignupProcessScreen extends StatelessWidget {
  SignupProcessScreen({Key? key}) : super(key: key);
  final fName = TextEditingController();
  final lName = TextEditingController();
  final number = TextEditingController();

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
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
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
                Text(
                  'Fill in your bio to get started',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.text,
                        fontSize: 30,
                      ),
                ),
                const SizedBox(height: AppSize.s20),
                Text(
                  'This data will be displayed in your account profile for security',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.grey,
                        fontSize: 12,
                      ),
                ),
                const SizedBox(height: AppSize.s40),
                TextFormWidget(
                  controller: fName,
                  text: 'First Name',
                  validator: () {},
                  textInputType: TextInputType.name,
                ),
                const SizedBox(height: AppSize.s20),
                TextFormWidget(
                  controller: lName,
                  text: 'Last Name',
                  validator: () {},
                  textInputType: TextInputType.name,
                ),
                const SizedBox(height: AppSize.s20),
                TextFormWidget(
                  controller: number,
                  text: 'Mobile Number',
                  validator: () {},
                  textInputType: TextInputType.phone,
                ),
                const SizedBox(height: AppSize.s100),
                MyButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.paymentScreenRoute);
                  },
                  text: 'Next',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
