import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../resources/costom_widgit.dart';
import '../../resources/routes_manager.dart';
import '../../resources/values_manager.dart';
import '../widgets/success_scren.dart';

class ResetPassordScreen extends StatelessWidget {
  ResetPassordScreen({Key? key}) : super(key: key);
  final newPass = TextEditingController();
  final conPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
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
                    'Reset your password here',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.text,
                          fontSize: 30,
                        ),
                  ),
                ),
                const SizedBox(height: AppSize.s20),
                Text(
                  'Select which contact details should we use to reset your password',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.grey,
                        fontSize: 12,
                      ),
                ),
                const SizedBox(height: AppSize.s40),
                TextFormWidget(
                  controller: newPass,
                  obscureText: true,
                  text: 'New Password',
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: ColorManager.primary,
                  ),
                  validator: () {},
                  textInputType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: AppSize.s40),
                TextFormWidget(
                  controller: conPass,
                  obscureText: true,
                  text: 'Confirm Password',
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: ColorManager.grey,
                  ),
                  validator: () {},
                  textInputType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: AppSize.s200),
                MyButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuccessScreen(
                          subTitel: 'Password reset succesful',
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              Routes.loginRoute,
                            );
                          },
                        ),
                      ),
                    );
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
