import 'package:firstapp/pages/getstarted_view.dart';
import 'package:firstapp/pages/login_view.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  final myItems = [
    Image.asset('assets/Pict1.png'),
    Image.asset('assets/Pict2.png'),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 300,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 5),
                  enlargeCenterPage: true,
                  aspectRatio: 6.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: myItems,
              ),
              const SizedBox(height: 70),
              AnimatedSmoothIndicator(
                activeIndex: myCurrentIndex,
                count: myItems.length,
                effect: const WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 5,
                  dotColor: Color(0xffD9D9D9),
                  activeDotColor: Color(0xffEB8071),
                  paintStyle: PaintingStyle.fill,
                ),
              ),
              const SizedBox(height: 75),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        MaterialButton(
                          minWidth: double.infinity,
                          height: 45,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupView()));
                          },
                          color: Color(0xffEB8071),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontFamily: "Inter",
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        MaterialButton(
                          minWidth: double.infinity,
                          height: 45,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                          },
                          color: Color(0xffE5E5EA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                              fontFamily: "Inter",
                              color: Color(0xffEB8071),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}