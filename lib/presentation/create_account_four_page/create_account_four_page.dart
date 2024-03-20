import '../create_account_four_page/widgets/countryselection_item_widget.dart';
import 'controller/create_account_four_controller.dart';
import 'models/countryselection_item_model.dart';
import 'models/create_account_four_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CreateAccountFourPage extends StatelessWidget {
  CreateAccountFourPage({Key? key})
      : super(
          key: key,
        );

  CreateAccountFourController controller =
      Get.put(CreateAccountFourController(CreateAccountFourModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_select_the_country".tr,
                        style: CustomTextStyles.bodyLargeGray600,
                      ),
                    ),
                    SizedBox(height: 19.v),
                    _buildCountrySelection(),
                    SizedBox(height: 63.v),
                    CustomElevatedButton(
                      text: "lbl_next".tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCountrySelection() {
    return Obx(
      () => Wrap(
        runSpacing: 12.v,
        spacing: 12.h,
        children: List<Widget>.generate(
          controller.createAccountFourModelObj.value.countryselectionItemList
              .value.length,
          (index) {
            CountryselectionItemModel model = controller
                .createAccountFourModelObj
                .value
                .countryselectionItemList
                .value[index];

            return CountryselectionItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
