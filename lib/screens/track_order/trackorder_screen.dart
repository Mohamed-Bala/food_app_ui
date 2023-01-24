import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Align(
              child: SizedBox(
                width: 500,
                height: 1000,
                child: Image.asset(
                  ImageAssets.maps,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
          Positioned(
            left: 160,
            right: 0,
            top: 190,
            child: Align(
              child: SizedBox(
                width: 171,
                height: 479,
                child: Image.asset(
                  ImageAssets.car,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
          ),
          Positioned(
            left: 230,
            top: 0,
            bottom: 460,
            child: Align(
              child: SizedBox(
                width: 106,
                height: 44,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(.7),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: ColorManager.primary,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '25 min',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.grey,
                              fontSize: 14,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 0,
            bottom: 10,
            child: Align(
              child: SizedBox(
                width: 342,
                height: 237,
                child: Container(
                  width: 335,
                  height: 81,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(.7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'Track Orders',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.text,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              ImageAssets.photo,
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Bala',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium!
                                    .copyWith(
                                      color: ColorManager.text,
                                      fontSize: 15,
                                    ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 12,
                                    height: 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '25 minutes on the way',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          color: ColorManager.grey,
                                          fontSize: 12,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              width: 247,
                              height: 68,
                              decoration: BoxDecoration(
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Color(0xFFFFFFFF),
                                //     spreadRadius: 0,
                                //     blurRadius: 8,
                                //     offset: Offset(0, 4),
                                //   ),
                                // ],
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffFFFFFF),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: ColorManager.primary,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Call',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          color: ColorManager.primary,
                                          fontSize: 14,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: ColorManager.primary,
                              ),
                              width: 68,
                              height: 68,
                              child: Icon(
                                Icons.email_rounded,
                                color: ColorManager.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Container(
                //   padding: EdgeInsets.only(left: 10),
                //   color: Colors.red,
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         'Track Orders',
                //         style: Theme.of(context)
                //             .textTheme
                //             .headlineMedium!
                //             .copyWith(
                //               fontWeight: FontWeight.bold,
                //               color: ColorManager.text,
                //               fontSize: 17,
                //             ),
                //       ),
                //       Container(
                //         width: 323,
                //         height: 87,
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           children: [
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.start,
                //               children: [
                //                 Image.asset(
                //                   ImageAssets.orderP,
                //                 ),
                //                 const SizedBox(width: 10),
                //                 Text(
                //                   'Mr Mohamed',
                //                   style: Theme.of(context)
                //                       .textTheme
                //                       .headlineMedium!
                //                       .copyWith(
                //                         fontWeight: FontWeight.bold,
                //                         color: ColorManager.text,
                //                         fontSize: 15,
                //                       ),
                //                 ),
                //               ],
                //             ),
                //             // Text(
                //             //   '25 minutes on the way',
                //             //   style: Theme.of(context)
                //             //       .textTheme
                //             //       .headlineMedium!
                //             //       .copyWith(
                //             //         fontWeight: FontWeight.bold,
                //             //         color: ColorManager.grey,
                //             //         fontSize: 14,
                //             //       ),
                //             // ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
