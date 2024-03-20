import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/messages_unread_one_screen/models/messages_unread_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessagesUnreadOneScreen.
///
/// This class manages the state of the MessagesUnreadOneScreen, including the
/// current messagesUnreadOneModelObj
class MessagesUnreadOneController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<MessagesUnreadOneModel> messagesUnreadOneModelObj = MessagesUnreadOneModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
