import 'package:final_project/presentation/create_account_three_screen/widgets/createaccountthreegrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../create_account_one_screen/create_account_one_screen.dart';
import 'controller/create_account_three_controller.dart';

class CreateAccountThreeScreen extends GetWidget<CreateAccountThreeController> {
  CreateAccountThreeScreen({Key? key}) : super(key: key) {
    Get.put(CreateAccountThreeController());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 23.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 274.h,
                  margin: EdgeInsets.only(right: 52.h),
                  child: Text(
                    "msg_what_type_of_work".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                Container(
                  width: 282.h,
                  margin: EdgeInsets.only(right: 44.h),
                  child: Text(
                    "msg_tell_us_what_you_re".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeGray600.copyWith(
                      height: 1.30,
                    ),
                  ),
                ),
                SizedBox(height: 33.v),
                // Integrate CAthreeGrid widget here
                CAthreeGrid(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildNextButton(),
      ),
    );
  }

  Widget _buildNextButton() {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 40.v,
      ),
      onPressed: () {
        // Access the user selection list
        List<String> userSelectionList = controller.userSelection;

        // Do something with the userSelectionList (e.g., print the selected items)
        print("User Selection: $userSelectionList");

        // Navigate to the next screen (replace it with your navigation logic)
        Get.to(CreateAccountOneScreen());
      },
    );
  }
}
