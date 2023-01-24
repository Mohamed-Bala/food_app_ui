import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 20),
            Text(
              'Notification',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: ColorManager.text,
                    fontSize: 25,
                  ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 400,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildPopularMenu(context);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPopularMenu(context) => Container(
        width: 347,
        height: 81,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorManager.white,
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
          border: Border.all(
            color: ColorManager.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your order has been taken by the driver',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: ColorManager.text,
                    fontSize: 15,
                  ),
            ),
            const SizedBox(height: 10),
            const Text(
              '10.00 am',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
}
