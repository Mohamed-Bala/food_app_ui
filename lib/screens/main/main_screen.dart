import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';
import '../detail_product/detail_product_screen.dart';
import '../filter/filter_screen.dart';
import '../notification/notification_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final textSearch = TextEditingController();

  late final List<SliderObject> _list = _getSliderData();
  List<SliderObject> _getSliderData() => [
        SliderObject(
          AppStrings.productName,
          AppStrings.price,
          ImageAssets.onboardingLogo2,
        ),
        SliderObject(
          AppStrings.productName,
          AppStrings.price,
          ImageAssets.onboardingLogo2,
        ),
        SliderObject(
          AppStrings.productName,
          AppStrings.price,
          ImageAssets.onboardingLogo2,
        ),
        SliderObject(
          AppStrings.productName,
          AppStrings.price,
          ImageAssets.onboardingLogo2,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 40,
          right: 20,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Find Your Favorite Food',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorManager.text,
                                fontSize: 40,
                                height: 1.0,
                                wordSpacing: 2,
                              ),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAFDFF),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFE5E5E5),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: ColorManager.primary,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: TextFormField(
                        controller: textSearch,
                        enabled: false,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffDA6317),
                          ),
                          hintText: "What do you want to order?",
                          fillColor: Color(0x0DF9A84D),
                          filled: true,
                          hintStyle: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffDA6317),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x0DF9A84D),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x0DF9A84D),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 49,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0x0DF9A84D),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0DF9A84D),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list_outlined,
                        color: Color(0xffDA6317),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  ImageAssets.home,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearest Restaurant',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.text,
                          fontSize: 15,
                        ),
                  ),
                  Text(
                    'View More',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffFF7C32),
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              GridView.count(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 0.80,
                crossAxisSpacing: 9.9,
                mainAxisSpacing: 10,
                children: List.generate(_list.length,
                    (index) => buildGridProduct(_list[index], context)
                    // StoreCubit.get(context).similarCategorie.data.products[index],

                    ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Menu',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.text,
                          fontSize: 15,
                        ),
                  ),
                  Text(
                    'View More',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffFF7C32),
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 900,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return buildPopularMenu(context);
                  },
                  separatorBuilder: (context, index) => Container(),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPopularMenu(context) => SizedBox(
        width: 400,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    ImageAssets.home,
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      'Herbal Pancake',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: ColorManager.text,
                                fontSize: 15,
                              ),
                    ),
                    Text(
                      'Warung Herbal',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: ColorManager.grey,
                                fontSize: 14,
                              ),
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                Text(
                  '\$700',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: const Color(0xffFEAD1D),
                        fontSize: 22,
                      ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget buildGridProduct(SliderObject sliderObject, context) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailProductScreen(),
            ),
          );
        },
        child: Container(
          width: 145,
          height: 184,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xffFFFFFF),
                spreadRadius: 0,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
            border: Border.all(
              color: const Color(0xffFFFFFF),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(
                  sliderObject.image,
                ),
                height: 100,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  sliderObject.name,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                child: Text(
                  sliderObject.price.toString(),
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.primary,
                        fontSize: 13,
                      ),
                ),
              ),
            ],
          ),
        ),
      );
}

// my class
class SliderObject {
  String name;
  double price;
  String image;

  SliderObject(this.name, this.price, this.image);
}
