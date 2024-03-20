import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/messages_page/models/messages_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessagesPage.
///
/// This class manages the state of the MessagesPage, including the
/// current messagesModelObj
class MessagesController extends GetxController {MessagesController(this.messagesModelObj);

TextEditingController searchController = TextEditingController();

Rx<MessagesModel> messagesModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
