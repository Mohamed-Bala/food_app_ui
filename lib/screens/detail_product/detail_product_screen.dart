import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_ui/resources/color_manager.dart';

import '../../resources/assets_manager.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.black12,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.light,
            ),
            backgroundColor: Colors.grey,
            expandedHeight: 500,
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Wijie Bar and Resto',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: ColorManager.white,
                      fontSize: 27,
                    ),
              ),
              background: Hero(
                tag: 'character.charId,',
                child: Image.asset(
                  ImageAssets.home,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 76,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0x2626c97c),
                            ),
                            child: Text(
                              'Popular',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    color: ColorManager.primary,
                                    fontSize: 12,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0x2626c97c),
                            ),
                            child: Icon(
                              Icons.location_on_sharp,
                              size: 25,
                              color: ColorManager.primary,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0x26FF1D1D),
                            ),
                            child: const Icon(
                              Icons.favorite,
                              size: 25,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 25,
                            color: ColorManager.primary,
                          ),
                          Text(
                            '19 Km',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  color: ColorManager.grey,
                                  fontSize: 14,
                                ),
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.star_half_outlined,
                            size: 25,
                            color: ColorManager.primary,
                          ),
                          Text(
                            '4,8 Rating',
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
                      const SizedBox(height: 20),
                      Text(
                        'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.grey,
                              fontSize: 12,
                            ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Menu',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  color: ColorManager.text,
                                  fontSize: 15,
                                ),
                          ),
                          Text(
                            'View All',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  color: const Color(0xffFF7C32),
                                  fontSize: 12,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 200,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return buildGridProduct(context);
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 30),
                          itemCount: 4,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Testimonials',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.text,
                              fontSize: 15,
                            ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 900,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return buildPopularMenu(context);
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(),
                          itemCount: 3,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 400,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildPopularMenu(context) => Container(
        width: 336,
        height: 170,
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
            Row(
              children: [
                ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=600',
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      'Dianne Russell',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                color: ColorManager.text,
                                fontSize: 15,
                              ),
                    ),
                    const Text(
                      '12 April 2021',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                Container(
                  width: 53,
                  height: 33,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0x2626c97c),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        size: 25,
                        color: ColorManager.primary,
                      ),
                      Text(
                        '5',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: ColorManager.primary,
                              fontSize: 16,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'This Is great, So delicious! You Must Here, With Your family,This Is great, So delicious! You Must Here, With Your famil',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: ColorManager.grey,
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      );

  Widget buildGridProduct(context) => InkWell(
        onTap: () {},
        child: Container(
          width: 145,
          height: 171,
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
              const Image(
                image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBtE1J5xVIO-adq-q1gHFVEfljYbyg9JU-XQ&usqp=CAU',
                ),
                height: 100,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Salad ',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                child: Text(
                  '12\$',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ColorManager.grey,
                        fontSize: 13,
                      ),
                ),
              ),
            ],
          ),
        ),
      );
}
