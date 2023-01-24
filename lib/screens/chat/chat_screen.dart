import 'package:flutter/material.dart';
import 'package:food_delivery_ui/screens/chat/chat_details/chat_details_screen.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 40,
        right: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Chat',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: ColorManager.text,
                    fontSize: 33,
                  ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return buildChatList(context);
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChatList(context) => InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatDetailsScreen(),
            ),
          );
        },
        child: Container(
          width: 335,
          height: 81,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFFFFFFF),
                spreadRadius: 0,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFFFFFFF),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 10,
                  top: 5,
                ),
                child: Row(
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
                          'Anamwp',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                color: ColorManager.text,
                                fontSize: 15,
                              ),
                        ),
                        Text(
                          'Your Order Just Arrived!',
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
                    const SizedBox(width: 50),
                    Text(
                      '20:00',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: ColorManager.grey,
                                fontSize: 14,
                              ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
