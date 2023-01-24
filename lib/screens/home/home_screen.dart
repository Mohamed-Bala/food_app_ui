import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_ui/resources/color_manager.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../cart/cart_screen.dart';
import '../chat/chat_screen.dart';
import '../main/main_screen.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curnIndex = 0;

  void changeInde(int index) {
    setState(() {
      curnIndex = index;
    });
  }

  late PersistentTabController _controller;
  List screen = [
    const Center(child: Text('home')),
    const Center(child: Text('fav')),
  ];
  List<Widget> pages() {
    return [
      MainScreen(),
      const ProfileScreen(),
      const CartScreen(),
      const ChatScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.home,
          size: 24,
          color: ColorManager.primary,
        ),
        title: ("Home"),
        activeColorSecondary: Colors.black,
        textStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 12,
            ),
        activeColorPrimary: ColorManager.primary,
        inactiveColorPrimary: ColorManager.primary,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.person_solid,
          size: 24,
          color: ColorManager.primary,
        ),
        title: ("Profile"),
        textStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 12,
            ),
        activeColorSecondary: Colors.black,
        activeColorPrimary: ColorManager.primary,
        inactiveColorPrimary: ColorManager.primary,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.cart_badge_minus,
          size: 24,
          color: ColorManager.primary,
        ),
        title: ("Cart"),
        textStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 12,
            ),
        activeColorSecondary: Colors.black,
        activeColorPrimary: ColorManager.primary,
        inactiveColorPrimary: ColorManager.primary,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.chat_bubble_text,
          size: 24,
          color: ColorManager.primary,
        ),
        title: ("Chat"),
        textStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 12,
            ),
        activeColorSecondary: Colors.black,
        activeColorPrimary: ColorManager.primary,
        inactiveColorPrimary: ColorManager.primary,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: screen[curnIndex],
        bottomNavigationBar: PersistentTabView(
          context,
          controller: _controller,
          screens: pages(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle
              .style1, // Choose the nav bar style with this property.
        ),
      ),
    );
  }
}
