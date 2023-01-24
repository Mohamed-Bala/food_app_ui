
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/resources/color_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/values_manager.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F6F6),
        appBar: AppBar(
          backgroundColor: const Color(0xffF6F6F6),
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 35,
            right: 20,
            bottom: 30,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                    'Wishlist',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorManager.text,
                          fontSize: 30,
                        ),
                  ),
                ),
                const SizedBox(height: AppSize.s20),
                SizedBox(
                  height: 900,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return buildWishlistItem(context);
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                    itemCount: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildWishlistItem(context) => SizedBox(
        width: 347,
        height: 103,
        child: Row(
          children: [
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                ImageAssets.home,
                width: 70,
                height: 70,
              ),
            ),
            const SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Herbal Pancake',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: ColorManager.text,
                        fontSize: 15,
                      ),
                ),
                Text(
                  'Warung Herbal',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: ColorManager.grey,
                        fontSize: 14,
                      ),
                ),
                Text(
                  '\$35',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: ColorManager.primary,
                        fontSize: 19,
                      ),
                ),
              ],
            ),
            const SizedBox(width: 40),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 79,
                    height: 29,
                    decoration: BoxDecoration(
                      color: ColorManager.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Buy Again',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: ColorManager.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
