import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/announcement_received_screen/models/announcement_received_model.dart';import 'package:flutter/material.dart';/// A controller class for the AnnouncementReceivedScreen.
///
/// This class manages the state of the AnnouncementReceivedScreen, including the
/// current announcementReceivedModelObj
class AnnouncementReceivedController extends GetxController {TextEditingController messageController = TextEditingController();

Rx<AnnouncementReceivedModel> announcementReceivedModelObj = AnnouncementReceivedModel().obs;

@override void onClose() { super.onClose(); messageController.dispose(); } 
 }
