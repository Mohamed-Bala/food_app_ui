import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/costom_widgit.dart';
import '../../resources/routes_manager.dart';
import '../../resources/values_manager.dart';

class UploadPreviewScreen extends StatelessWidget {
  const UploadPreviewScreen({Key? key}) : super(key: key);

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
                  'Upload Your Photo Profile',
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
              Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                    width: 245,
                    height: 238,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageAssets.photo,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 15,
                    top: 20,
                    child: Icon(
                      Icons.cancel,
                      size: 31,
                      color: Color(0xffFEFEFF),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              MyButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.setLocationScreenRoute);
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
