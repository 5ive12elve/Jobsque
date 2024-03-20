import '../onboarding_one_screen/widgets/findajobandslider_item_widget.dart';
import 'controller/onboarding_one_controller.dart';
import 'models/findajobandslider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  OnboardingOneScreen({Key? key}) : super(key: key);

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildFindAJobAndSlider(),
              SizedBox(height: 50.v),
              Obx(
                    () => SizedBox(
                  height: 8.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: controller.sliderIndex.value,
                    count: controller.onboardingOneModelObj.value.findajobandsliderItemList.value.length,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 3,
                      activeDotColor: theme.colorScheme.primary,
                      dotColor: appTheme.blue100,
                      activeDotScale: 1.2,
                      dotHeight: 6,
                      dotWidth: 6,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextButton(),
      ),
    );
  }

  Widget _buildFindAJobAndSlider() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.zero,
          child: Hero(
            tag: 'carouselHero',
            child: Obx(
                  () => CarouselSlider.builder(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 605.v,
                  initialPage: controller.sliderIndex.value,
                  autoPlay: false,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  },
                ),
                itemCount: controller.onboardingOneModelObj.value.findajobandsliderItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  FindajobandsliderItemModel model =
                  controller.onboardingOneModelObj.value.findajobandsliderItemList.value[index];
                  return FindajobandsliderItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          top: 32.v,
          right: 32.h,
          child: GestureDetector(
            onTap: () {
              if (controller.nextButtonLabel.tr == 'Get Started') {
                Get.offNamed(AppRoutes.createAccountScreen);
              } else {
                // Handle Skip button press here
              }
            },
            child: Text(
              'Skip',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Positioned(
          top: 32.v,
          left: 32.h,
          child: Image.asset(
            'assets/images/label_logo.png',
            width: 81,
            height: 19,
          ),
        ),
      ],
    );
  }

  Widget _buildNextButton() {
    return CustomElevatedButton(
      text: controller.nextButtonLabel.tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 56.v,
      ),
      onPressed: () {
        int nextIndex = controller.sliderIndex.value + 1;
        if (controller.nextButtonLabel.tr == 'Get Started') {
          Get.offNamed(AppRoutes.createAccountScreen);
        } else if (nextIndex < controller.onboardingOneModelObj.value.findajobandsliderItemList.value.length) {
          _carouselController.animateToPage(nextIndex);
        }
        controller.update();
      },
    );
  }
}
