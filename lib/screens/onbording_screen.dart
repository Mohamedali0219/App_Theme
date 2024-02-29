import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/cubits/cubit/app_cubit.dart';
import 'package:shop_app/models/onboarding.dart';
import 'package:shop_app/screens/shop_login_screen.dart';
import 'package:shop_app/service/fuctions/navigator_fun.dart';
import 'package:shop_app/widgets/onboarding_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnbordingModel> onbordingList = const [
    OnbordingModel(
        image: 'assets/images/onbording_image.jpg',
        title: 'title',
        description: 'description'),
    OnbordingModel(
        image: 'assets/images/onbording_image.jpg',
        title: 'title',
        description: 'description'),
    OnbordingModel(
        image: 'assets/images/onbording_image.jpg',
        title: 'title',
        description: 'description'),
  ];
  var pageController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              TextButton(
                onPressed: () {
                  navigatAndReplace(context, const ShopLoginScreen());
                },
                child: const Text('Skip'),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemBuilder: (context, index) => OnBordingItemBilder(
                      onbordingModel: onbordingList[index],
                    ),
                    itemCount: onbordingList.length,
                    onPageChanged: (index) {
                      if (index == onbordingList.length - 1) {
                        setState(() {
                          isLast = true;
                          print('is last');
                        });
                      } else {
                        setState(() {
                          isLast = false;
                          print('is not last');
                        });
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    SmoothPageIndicator(
                        controller: pageController,
                        count: 3,
                        /*
                        effect: const WormEffect(
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Colors.deepOrange,
                        spacing: 5,
                      ),
                      */
                        effect: const ExpandingDotsEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Colors.deepOrange,
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 5,
                          expansionFactor: 3,
                        )),
                    const Spacer(),
                    FloatingActionButton(
                      onPressed: () {
                        if (isLast) {
                          navigatTo(context, const ShopLoginScreen());
                        } else {
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 750),
                              curve: Curves.fastLinearToSlowEaseIn);
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(Icons.arrow_forward_ios),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
