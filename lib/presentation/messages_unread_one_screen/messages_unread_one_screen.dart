import '../messages_unread_one_screen/widgets/messagesunreadlist_item_widget.dart';
import 'controller/messages_unread_one_controller.dart';
import 'models/messagesunreadlist_item_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_icon_button.dart';
import 'package:final_project/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class MessagesUnreadOneScreen extends GetWidget<MessagesUnreadOneController> {
  const MessagesUnreadOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 7.v),
          child: Column(
            children: [
              _buildSearchRow(),
              SizedBox(height: 15.v),
              _buildUnreadRow(),
              SizedBox(height: 15.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildMessagesUnreadList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 48.h,
      centerTitle: true,
      title: AppbarSubtitle(text: "lbl_messsages".tr),
    );
  }

  /// Section Widget
  Widget _buildSearchRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "msg_search_messages".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgFilterBlueGray90002,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUnreadRow() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 7.v),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text("lbl_unread".tr, style: theme.textTheme.titleSmall),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "msg_read_all_messages".tr,
              style: CustomTextStyles.titleSmallPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessagesUnreadList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Obx(
            () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 17.v);
          },
          itemCount: controller.messagesUnreadOneModelObj.value.messagesunreadlistItemList.value.length,
          itemBuilder: (context, index) {
            MessagesunreadlistItemModel model = controller.messagesUnreadOneModelObj.value.messagesunreadlistItemList.value[index];
            return MessagesunreadlistItemWidget(model);
          },
        ),
      ),
    );
  }
}
