import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';
import '../../resources/costom_widgit.dart';
import '../../resources/routes_manager.dart';
import '../../resources/values_manager.dart';
import '../widgets/success_scren.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: AppSize.s0,
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
                  'Set Your Location ',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.text,
                        fontSize: 30,
                      ),
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
              Row(
                children: [
                  Container(
                    width: 33,
                    height: 33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffF8D52B),
                    ),
                    child: const Icon(
                      Icons.location_on_rounded,
                      size: 33,
                      color: Color(0xffE86D28),
                    ),
                  ),
                  const SizedBox(width: AppSize.s10),
                  Text(
                    'Your Location',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: ColorManager.text,
                          fontSize: 15,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.s40),
              Container(
                width: 322,
                height: 57,
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
                    child: Text(
                      'Set Location',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ColorManager.text,
                            fontSize: 14,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSize.s20),
              const Spacer(),
              MyButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SuccessScreen(
                        subTitel: 'Your Profile Is Ready To Use',
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
    );
  }
}
