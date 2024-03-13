import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_insurance/models/onboarding_model.dart';
import 'package:mobile_insurance/utils/animated_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  // final listOfItems = OnboardingModel(img: img, title: title, subTitle: subTitle)

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (newIndex) {
                    setState(() {
                      currentIndex = newIndex;
                    });
                  },
                  controller: pageController,
                  itemCount: OnboardingModel.listOfItems.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(15, 40, 15, 10),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 2.5,
                            child: CustomAnimatedWidget(
                              index: index,
                              delay: 200,
                              child: Image.asset(
                                  OnboardingModel.listOfItems[index].img),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: CustomAnimatedWidget(
                              index: index,
                              delay: 200,
                              child: Text(
                                OnboardingModel.listOfItems[index].title,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    color: Colors.black, fontSize: 26),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: CustomAnimatedWidget(
                              index: index,
                              delay: 200,
                              child: Text(
                                OnboardingModel.listOfItems[index].subTitle,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              )),
                        )
                      ],
                    );
                  }))),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: pageController,
                    count: OnboardingModel.listOfItems.length,
                    effect: const ExpandingDotsEffect(
                      // this takes several parameters such as radius, dotwidth, spacing, dotheight, expansionFactor, dotColor and activeDotColor
                      spacing: 6.0,
                      radius: 10.0,
                      dotWidth: 10.0,
                      dotHeight: 10.0,
                      expansionFactor: 3.8,
                      dotColor: Colors.grey,
                      
                    ),
                    onDotClicked: (newIndex) {
                      setState(() {
                        currentIndex = newIndex;
                        pageController.animateToPage(
                          newIndex, 
                          duration: const Duration(milliseconds: 500), 
                          curve: Curves.ease);
                      });
                    },
                  ),

                  const Spacer(),
                  currentIndex == 2 ? Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
                  
                  )
                ],
              ))
        ],
      ),
    );
  }
}
