import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/values_manager.dart';
import 'set_maps.dart';
import 'widgets/success_scren.dart';

class PaymentsOrderScreen extends StatelessWidget {
  const PaymentsOrderScreen({Key? key}) : super(key: key);

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
                  'Confirm Order',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.text,
                        fontSize: 30,
                      ),
                ),
              ),
              const SizedBox(height: AppSize.s20),
              Container(
                width: 335,
                height: 108,
                padding: const EdgeInsets.all(10),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Deliver To',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorManager.grey,
                                fontSize: 14,
                              ),
                        ),
                        Text(
                          'Edit',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorManager.primary,
                                fontSize: 14,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.s20),
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
                        const SizedBox(width: AppSize.s20),
                        Text(
                          'Sudan,Khartoum. bahri',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: ColorManager.text,
                                fontSize: 15,
                              ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.s20),
              Container(
                width: 335,
                height: 108,
                padding: const EdgeInsets.all(10),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Method',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorManager.grey,
                                fontSize: 14,
                              ),
                        ),
                        Text(
                          'Edit',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorManager.primary,
                                fontSize: 14,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.s20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          ImageAssets.paypal,
                        ),
                        Text(
                          '2121 6352 8465 ****',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: ColorManager.grey,
                                fontSize: 14,
                              ),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SetMapsScreen(),
                      ));
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const SetMapsScreen(),
                      //   ),
                      // );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => SuccessScreen(
                      //       onPressed: () {
                      //         Navigator.pop(context);
                      //       },
                      //       subTitel: 'Confirm Order succesful',
                      //     ),
                      //   ),
                      // );
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
                        'Confirm',
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
}
