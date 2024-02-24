import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardSecondScreen extends StatefulWidget {
  const OnBoardSecondScreen({super.key});

  @override
  State<OnBoardSecondScreen> createState() => _OnBoardSecondScreenState();
}

class _OnBoardSecondScreenState extends State<OnBoardSecondScreen> {
  PageController _imageController = PageController();
  int index = 0;
  List<String> onBoardingImages = [
    "assets/images/Find food you love vector.svg",
    "assets/images/Delivery vector.svg",
    "assets/images/Live tracking vector.svg",
  ];
  List<String> onBoardingTextHeading = [
    "Find Food You Love",
    "Fast Delivery",
    "Live Tracking",
  ];
  List<String> onBoardingText = [
    "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
    "Fast food delivery to your home, office wherever you are",
    "Real time tracking of your food on the app once you placed the order",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Container(
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 40),
            child: PageView.builder(
              controller: _imageController,
              onPageChanged: (int value) {
                setState(() {
                  index = value;
                });
              },
              itemCount: onBoardingImages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                  child: SvgPicture.asset(onBoardingImages[index]),
                );
              },
            ),
          ),
          SmoothPageIndicator(
            controller: _imageController,
            count: onBoardingImages.length,
            effect: WormEffect(
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: Colors.blue,
              dotColor: Colors.grey,
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: 40),
            child: Text(
              onBoardingTextHeading[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Metropolis",
                height: 1.5,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
                fontSize: 30,
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.0),
            child: Text(onBoardingText[index],
              textAlign: TextAlign.center,
              maxLines: 3,
              style: TextStyle(
                fontFamily: "Metropolis",
                height: 1.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF7C7D7E),
                fontSize: 14,
              ),
            ),
          ),

          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 56,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 24.0,right: 24.0,bottom: 20.0,),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFFC6011),
                borderRadius: BorderRadius.circular(34),
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  fontFamily: "Metropolis",
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
