import 'package:flutter/material.dart';
import 'package:food_delivery_ui/resources/test.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import 'track_order/trackorder_screen.dart';

class SetMapsScreen extends StatelessWidget {
  const SetMapsScreen({Key? key}) : super(key: key);

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
            left: 80,
            top: 180,
            child: Align(
              child: Image.asset(
                ImageAssets.set,
              ),
            ),
          ),
          Positioned(
            left: 150,
            top: 0,
            bottom: 300,
            child: Align(
              child: SizedBox(
                width: 70,
                height: 70,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0x4D26c97c),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: ColorManager.primary,
                        size: 30,
                      ),
                      const SizedBox(width: 5),
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
                height: 181,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'Your Location',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              '4517 Sudan,Khartoum. bahri 39495',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    color: ColorManager.text,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          navigatAndFinish(context, TrackOrderScreen());
                          // Navigator.of(context).push(MaterialPageRoute(
                          //   builder: (context) => const TrackOrderScreen(),
                          // ));
                        },
                        child: Container(
                          width: 322,
                          height: 57,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorManager.primary,
                          ),
                          child: Text(
                            'Set Location',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  color: ColorManager.white,
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
        ],
      ),
    );
  }
}
