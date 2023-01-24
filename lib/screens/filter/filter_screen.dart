import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({Key? key}) : super(key: key);
  final textSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Filter',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: ColorManager.text,
                fontSize: 20,
              ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              child: TextFormField(
                controller: textSearch,
                enabled: true,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xffDA6317),
                  ),
                  hintText: "What do you want to order?",
                  fillColor: Color(0x0DF9A84D),
                  filled: true,
                  hintStyle: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffDA6317),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x0DF9A84D),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x0DF9A84D),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Type',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.text,
                      fontSize: 15,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 6.0,
              runSpacing: 6.0,
              children: [
                _buildChip('Restaurant'),
                const SizedBox(width: 10),
                _buildChip('Menu'),
              ],
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Location',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.text,
                      fontSize: 15,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 6.0,
              runSpacing: 6.0,
              children: [
                _buildChip('1 Km'),
                const SizedBox(width: 10),
                _buildChip('>10 Km'),
                const SizedBox(width: 10),
                _buildChip('<10 Km'),
              ],
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Food',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: ColorManager.text,
                      fontSize: 15,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 6.0,
              runSpacing: 6.0,
              children: [
                _buildChip('Cake'),
                const SizedBox(width: 10),
                _buildChip('Soup'),
                const SizedBox(width: 10),
                _buildChip('Main Course'),
                _buildChip('Appetizer'),
                const SizedBox(width: 10),
                _buildChip('Dessert'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String label) {
    return SizedBox(
      height: 50,
      child: Chip(
        // labelPadding: EdgeInsets.all(2.0),
        avatar: CircleAvatar(
          backgroundColor: Colors.white70,
          child: Text(label[0].toUpperCase()),
        ),
        label: Text(
          label,
          style: const TextStyle(
            color: Color(0xffDA6317),
          ),
        ),
        backgroundColor: const Color(0x0DF9A84D),
        elevation: 6.0,
        //shadowColor: Colors.grey[60],
        // padding: EdgeInsets.all(8.0),
      ),
    );
  }
}
