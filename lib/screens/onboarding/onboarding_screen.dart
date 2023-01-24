import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/constants_manager.dart';
import '../../resources/costom_widgit.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';
import '../../resources/values_manager.dart';

int _currentIndex = 0;
 final List<SliderObject> _list = _getSliderData();
final PageController _pageController = PageController();

List<SliderObject> _getSliderData() => [
      SliderObject(
        image: ImageAssets.onboardingLogo2,
        title: AppStrings.onBoardingTitle1,
        subTitle: AppStrings.onBoardingSubTitle1,
      ),
      SliderObject(
        image: ImageAssets.onboardingLogo1,
        title: AppStrings.onBoardingTitle2,
        subTitle: AppStrings.onBoardingSubTitle2,
      ),
    ];

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: _pageController,
        itemCount: _list.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnBoardingPage(_list[index]);
        },
      ),
    );
  }
}

//  Widget display in screen
class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;

  const OnBoardingPage(this._sliderObject, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: AppSize.s100),
        Image.asset(
          _sliderObject.image,
        ),
        const SizedBox(height: AppSize.s40),
        SizedBox(
          width: 299,
          child: Text(
            _sliderObject.title,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: ColorManager.text,
                  fontSize: 25,
                ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: AppSize.s40),
        SizedBox(
          width: 270,
          child: Text(
            _sliderObject.subTitle,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: AppSize.s40),
        MyButton(
          onPressed: () {
            _pageController.animateToPage(
              _getNextIndex(context),
              duration: const Duration(
                milliseconds: AppConstants.sliderAnimationTime,
              ),
              curve: Curves.easeIn,
            );
          },
          text: 'Next',
        ),
      ],
    );
  }

  int _getNextIndex(context) {
    int nextIndex = ++_currentIndex;
    if (nextIndex == _list.length) {
      Navigator.pushReplacementNamed(context, Routes.loginRoute);
      return 0;
    }
    return nextIndex;
  }
}

// my class
class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(
      {required this.image, required this.title, required this.subTitle});
}
