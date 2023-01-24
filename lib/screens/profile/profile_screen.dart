import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/screens/wshlist/wishlist_screen.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../notification/notification_screen.dart';
import '../order/order_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Align(
                child: SizedBox(
                  width: 375,
                  height: 320,
                  child: Image.asset(
                    ImageAssets.test,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              child: Container(
                width: 376,
                height: 528,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 330,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Member Gold',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffFEAD1D),
                                fontSize: 12,
                              ),
                    ),
                    Text(
                      'Mohamed Bala',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorManager.text,
                                fontSize: 27,
                              ),
                    ),
                    Text(
                      'bala66@gmail.com',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: ColorManager.grey,
                                fontSize: 14,
                              ),
                    ),
                    const SizedBox(height: 30),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        //  primary: kPrimaryColor,
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: const Color(0xFFFFFFFF),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const WishlistScreen(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.favorite,
                              color: ColorManager.primary,
                            ),
                          ),
                          Text(
                            'Wishlist',
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(width: 200),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorManager.primary,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        //  primary: kPrimaryColor,
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: const Color(0xFFFFFFFF),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person,
                              color: ColorManager.primary,
                            ),
                          ),
                          Text(
                            'Profile',
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(width: 200),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorManager.primary,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        //  primary: kPrimaryColor,
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: const Color(0xFFFFFFFF),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.notifications,
                              color: ColorManager.primary,
                            ),
                          ),
                          Text(
                            'Notifications',
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(width: 160),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorManager.primary,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderScreen(),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        //  primary: kPrimaryColor,
                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: const Color(0xFFFFFFFF),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.bag_fill,
                              color: ColorManager.primary,
                            ),
                          ),
                          Text(
                            'Orders',
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(width: 200),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ColorManager.primary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatefulWidget {
  ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  IconData icon;
  final VoidCallback press;

  @override
  State<ProfileMenu> createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          //  primary: kPrimaryColor,
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: widget.press,
        child: Row(
          children: [
            IconButton(
              onPressed: widget.press,
              icon: Icon(widget.icon, color: ColorManager.primary),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                widget.text,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: ColorManager.primary),
          ],
        ),
      ),
    );
  }
}
