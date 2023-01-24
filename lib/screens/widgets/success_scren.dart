import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/costom_widgit.dart';
import '../../resources/values_manager.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {Key? key, required this.subTitel, required this.onPressed})
      : super(key: key);

  final String subTitel;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: AppSize.s100),
          Center(child: Image.asset(ImageAssets.success)),
          const SizedBox(width: AppSize.s20),
          Text(
            'Congrats!',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: ColorManager.primary,
                  fontSize: 30,
                ),
          ),
          const SizedBox(width: AppSize.s20),
          Text(
            subTitel,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: ColorManager.text,
                  fontSize: 23,
                ),
          ),
          const SizedBox(height: AppSize.s200),
          MyButton(
            onPressed: onPressed,
            text: 'Back',
          ),
        ],
      ),
    );
  }
}
