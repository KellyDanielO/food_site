import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../function/functions.dart';
import '../models/data_models.dart';
import '../widgets/shop_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BottomTabs> bottomTabs = [
    BottomTabs(
      icon: CupertinoIcons.house_fill,
      action: () {},
    ),
    BottomTabs(
      icon: CupertinoIcons.heart,
      action: () {},
    ),
    BottomTabs(
      icon: CupertinoIcons.cart,
      action: () {},
    ),
    BottomTabs(
      icon: CupertinoIcons.person,
      action: () {},
    ),
  ];
  final List<String> _pageFilter = ['All', 'Pizza', 'Burger', 'Sandwitch'];
  String _selectedFilter = 'All';

  final List<ShopItem> _popularFoodShopItems = [
    ShopItem(
      name: 'Hamburger',
      price: '\$4,000',
      category: 'Burger',
      image: 'assets/images/img-1.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet volutpat nisl, et porttitor mi. In sollicitudin aliquam velit, in consectetur nisl varius accumsan. Fusce lacus nibh, suscipit a orci non, facilisis lacinia elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget sollicitudin nulla. Quisque ut nulla ut lectus sagittis malesuada vel sit amet ipsum. Etiam vel turpis tellus.',
      tag: AppHelpers.randomIdGen(),
    ),
    ShopItem(
      name: 'Pepperoni Pizza',
      price: '\$4,000',
      category: 'Pizza',
      image: 'assets/images/img-2.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet volutpat nisl, et porttitor mi. In sollicitudin aliquam velit, in consectetur nisl varius accumsan. Fusce lacus nibh, suscipit a orci non, facilisis lacinia elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget sollicitudin nulla. Quisque ut nulla ut lectus sagittis malesuada vel sit amet ipsum. Etiam vel turpis tellus.',
      tag: AppHelpers.randomIdGen(),
    ),
    ShopItem(
      name: 'Biggie Sandwitch',
      price: '\$4,000',
      category: 'Sandwitch',
      image: 'assets/images/img-3.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet volutpat nisl, et porttitor mi. In sollicitudin aliquam velit, in consectetur nisl varius accumsan. Fusce lacus nibh, suscipit a orci non, facilisis lacinia elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget sollicitudin nulla. Quisque ut nulla ut lectus sagittis malesuada vel sit amet ipsum. Etiam vel turpis tellus.',
      tag: AppHelpers.randomIdGen(),
    ),
  ];

  final List<ShopItem> _nearestFoodShopItems = [
    ShopItem(
      name: 'Hamburger',
      price: '\$4,000',
      category: 'Burger',
      image: 'assets/images/img-1.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet volutpat nisl, et porttitor mi. In sollicitudin aliquam velit, in consectetur nisl varius accumsan. Fusce lacus nibh, suscipit a orci non, facilisis lacinia elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget sollicitudin nulla. Quisque ut nulla ut lectus sagittis malesuada vel sit amet ipsum. Etiam vel turpis tellus.',
      tag: AppHelpers.randomIdGen(),
    ),
    ShopItem(
      name: 'Pepperoni Pizza',
      price: '\$4,000',
      category: 'Pizza',
      image: 'assets/images/img-2.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet volutpat nisl, et porttitor mi. In sollicitudin aliquam velit, in consectetur nisl varius accumsan. Fusce lacus nibh, suscipit a orci non, facilisis lacinia elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget sollicitudin nulla. Quisque ut nulla ut lectus sagittis malesuada vel sit amet ipsum. Etiam vel turpis tellus.',
      tag: AppHelpers.randomIdGen(),
    ),
    ShopItem(
      name: 'Biggie Sandwitch',
      price: '\$4,000',
      category: 'Sandwitch',
      image: 'assets/images/img-3.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet volutpat nisl, et porttitor mi. In sollicitudin aliquam velit, in consectetur nisl varius accumsan. Fusce lacus nibh, suscipit a orci non, facilisis lacinia elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget sollicitudin nulla. Quisque ut nulla ut lectus sagittis malesuada vel sit amet ipsum. Etiam vel turpis tellus.',
      tag: AppHelpers.randomIdGen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned.fill(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 70,
                          height: 70,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/user.jpeg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.bell,
                            size: 28,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(text: 'Choose\n'),
                          const TextSpan(text: 'Your Favourite '),
                          TextSpan(
                            text: 'Food ',
                            style: TextStyle(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 70,
                            child: TextField(
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.white,
                                  hintText: 'Search...',
                                  prefixIcon: const Icon(CupertinoIcons.search),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 20),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide.none,
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        IconButton.filled(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: const WidgetStatePropertyAll(
                              EdgeInsets.all(20),
                            ),
                            backgroundColor:
                                WidgetStatePropertyAll(AppColors.primaryColor),
                          ),
                          icon: Icon(
                            Icons.filter_list_outlined,
                            color: AppColors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: List.generate(
                        _pageFilter.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedFilter = _pageFilter[index];
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 15,
                            ),
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: _selectedFilter == _pageFilter[index]
                                  ? AppColors.primaryColor
                                  : AppColors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              _pageFilter[index],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: _selectedFilter == _pageFilter[index]
                                    ? AppColors.white
                                    : AppColors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Popular Food',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width,
                    height: 300,
                    child: ListView.builder(
                      itemCount: _popularFoodShopItems.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      itemBuilder: (context, index) {
                        final item = _popularFoodShopItems[index];
                        return ShopItemWidget(item: item, width: width);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Nearest Food',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width,
                    height: 300,
                    child: ListView.builder(
                      itemCount: _nearestFoodShopItems.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      reverse: true,
                      itemBuilder: (context, index) {
                        final item = _nearestFoodShopItems[index];
                        return ShopItemWidget(item: item, width: width);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            bottomNavigationBar(width),
          ],
        ),
      ),
    );
  }

  Positioned bottomNavigationBar(double width) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 20,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: width - 20,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(100),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              bottomTabs.length,
              (index) => IconButton(
                onPressed: bottomTabs[index].action,
                icon: Icon(
                  bottomTabs[index].icon,
                  color: AppColors.white,
                  size: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
