import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common/extensions.dart';
import 'package:food_delivery_app/views/menu_screen/menu_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "Good morning Arti!",
          style: TextStyle(
            fontFamily: "Metropolis",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Delivering to",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontFamily: "Metropolis",
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: TColor.primary,
                      )
                    ],
                  ),
                  const Text(
                    "Current Location",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 16,
                      color: Color(0xFF7C7D7E),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(34),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  hintText: "Search Food",
                  hintStyle: const TextStyle(
                    color: Color(0xFFB6B7B7),
                  ),
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: Color(0xFF7C7D7E),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(34),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  fillColor: const Color(0xFFF2F2F2),
                  filled: true,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 88,
                          width: 88,
                          margin: EdgeInsets.only(
                            left: 20,
                            right: index == 6 ? 20 : 0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset("assets/images/food.png"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Offers",
                          style: TextStyle(
                            fontFamily: "Metropolis",
                            fontSize: 14,
                            color: Color(0xFF4A4B4D),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Restaurants",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "View all",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 13,
                      color: TColor.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const popular_food_tile(),
            const popular_food_tile(),
            const popular_food_tile(),
            const popular_food_tile(),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Most Popular",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "View all",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 13,
                      color: TColor.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 230,
              // decoration: BoxDecoration(color: Colors.red),
              width: double.maxFinite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.only(left: 20, right: index == 6 ? 24 : 0),
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 135,
                              width: 228,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "assets/images/food.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Café De Bambaa",
                                  style: TextStyle(
                                    fontFamily: "Metropolis",
                                    fontSize: 14,
                                    color: Color(0xFF4A4B4D),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Western Food",
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontFamily: "Metropolis",
                                        fontSize: 16,
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    Text(
                                      "4.9",
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontFamily: "Metropolis",
                                        fontSize: 16,
                                        color: TColor.primary,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: TColor.primary,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Items",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "View all",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 13,
                      color: TColor.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 75,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 24),
                    child: Row(
                      children: [
                        Image.asset(
                          height: 75,
                          width: 75,
                          "assets/images/food.png",
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Mulberry Pizza by Josh",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontFamily: "Metropolis",
                                fontSize: 16,
                                color: Color(0xFF4A4B4D),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Western Food",
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                fontFamily: "Metropolis",
                                fontSize: 16,
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "4.9",
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontFamily: "Metropolis",
                                        fontSize: 16,
                                        color: TColor.primary,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: TColor.primary,
                                      size: 16,
                                    ),
                                  ],
                                ),
                                Text(
                                  "  (124 ratings)",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    fontFamily: "Metropolis",
                                    fontSize: 16,
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 72,
        width: 72,
        child: FloatingActionButton.large(
          backgroundColor: TColor.primary,
          onPressed: () {
            NavigatorClass.navigatorPushRoute(
              context,
              const MenuScreen(),
            );
          },
          child: const Icon(
            Icons.home,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            setState(() {
              pageIndex = value;
            });
          });
        },
        currentIndex: pageIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
        ],
      ),
    );
  }
}

class popular_food_tile extends StatelessWidget {
  const popular_food_tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 242.19,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Image.asset(
            "assets/images/food.png",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Minute by tuk tuk",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 16,
                      color: Color(0xFF4A4B4D),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "Western Food",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 16,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "4.9",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontFamily: "Metropolis",
                          fontSize: 20,
                          color: TColor.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star,
                        color: TColor.primary,
                        size: 16,
                      ),
                    ],
                  ),
                  Text(
                    "  (124 ratings) Cafe",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize: 16,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
