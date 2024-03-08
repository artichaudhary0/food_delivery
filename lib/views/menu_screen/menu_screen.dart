import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../common/color_extension.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: const Text(
            "Menu",
            style: TextStyle(
              fontFamily: "Metropolis",
              fontSize: 24,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 485,
                  width: 97,
                  decoration: BoxDecoration(
                    color: TColor.primary,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(38),
                      bottomRight: Radius.circular(38),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 59,
                  child: Container(
                    height: 87,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 1.35,
                    padding: const EdgeInsets.only(right: 33),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 3,
                          blurRadius: 20,
                          offset: const Offset(3, 3),
                          color: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Food",
                          style: TextStyle(
                            fontFamily: "Metropolis",
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "120 items",
                          style: TextStyle(
                            fontFamily: "Metropolis",
                            fontSize: 18,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 360,
                  child: Container(
                      height: 33,
                      width: 33,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 3,
                            blurRadius: 20,
                            offset: const Offset(3, 3),
                            color: Colors.grey.shade300,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: TColor.primary,
                        size: 20,
                      )),
                ),
                Positioned(
                  top: 40,
                  left: 33,
                  child: Container(
                    height: 70,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/food.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
