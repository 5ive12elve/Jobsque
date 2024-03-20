import '../messages_page/widgets/messageslist_item_widget.dart';import 'controller/messages_controller.dart';import 'models/messages_model.dart';import 'models/messageslist_item_model.dart';import 'package:final_project/core/app_export.dart';import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';import 'package:final_project/widgets/app_bar/custom_app_bar.dart';import 'package:final_project/widgets/custom_icon_button.dart';import 'package:final_project/widgets/custom_search_view.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class MessagesPage extends StatelessWidget {MessagesPage({Key? key}) : super(key: key);

MessagesController controller = Get.put(MessagesController(MessagesModel().obs));

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 7.v), child: Column(children: [_buildSearchRow(), SizedBox(height: 28.v), _buildMessagesList()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitle(text: "lbl_messsages".tr)); } 
/// Section Widget
Widget _buildSearchRow() { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomSearchView(controller: controller.searchController, hintText: "msg_search_messages".tr)), Padding(padding: EdgeInsets.only(left: 12.h), child: CustomIconButton(height: 48.adaptSize, width: 48.adaptSize, padding: EdgeInsets.all(12.h), decoration: IconButtonStyleHelper.outlineBlueGray, child: CustomImageView(imagePath: ImageConstant.imgFilterBlueGray90002)))]); } 
/// Section Widget
Widget _buildMessagesList() { return Expanded(child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: controller.messagesModelObj.value.messageslistItemList.value.length, itemBuilder: (context, index) {MessageslistItemModel model = controller.messagesModelObj.value.messageslistItemList.value[index]; return MessageslistItemWidget(model);}))); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
