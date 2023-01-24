import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/values_manager.dart';
import '../payments_order_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

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
                    'Cart',
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
                      return buildPopularMenu(context);
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 347,
            height: 240,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: ColorManager.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub-Total',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.white,
                              fontSize: 14,
                            ),
                      ),
                      Text(
                        '120 \$',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.white,
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.white,
                              fontSize: 14,
                            ),
                      ),
                      Text(
                        '20 \$',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.white,
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Charge',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.white,
                              fontSize: 14,
                            ),
                      ),
                      Text(
                        '10 \$',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.white,
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.s10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.white,
                              fontSize: 22,
                            ),
                      ),
                      Text(
                        '150 \$',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.white,
                              fontSize: 22,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.s20),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentsOrderScreen(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorManager.white,
                      ),
                      child: Text(
                        'Check Out',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorManager.primary,
                              fontSize: 14,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPopularMenu(context) => SizedBox(
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
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color(0x0D26c97c),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '-',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: ColorManager.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    '1',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: ColorManager.text,
                          fontSize: 15,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: ColorManager.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '+',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: Colors.white,
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
