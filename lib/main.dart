import 'package:final_project/presentation/applied_job_screen/controller/applied_job_controller.dart';
import 'package:final_project/presentation/edite_profile_screen/services/edit_profile_service.dart';
import 'package:final_project/presentation/homescreen/controller/homescreen_controller.dart';
import 'package:final_project/presentation/login_one_screen/controller/login_one_controller.dart';
import 'package:final_project/presentation/message_screen/controller/message_controller.dart';
import 'package:final_project/presentation/messages_unread_one_screen/controller/messages_unread_one_controller.dart';
import 'package:final_project/presentation/onboarding_one_screen/controller/onboarding_one_controller.dart';
import 'package:final_project/presentation/create_account_four_tab_container_screen/controller/create_account_four_tab_container_controller.dart';
import 'package:final_project/presentation/profile/controller/profile_controller.dart';
import 'package:final_project/presentation/root_screen/root_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  final OnboardingOneController onboardingOneController = OnboardingOneController();
  final CreateAccountFourTabContainerController createAccountFourTabContainerController =
  CreateAccountFourTabContainerController();
  final ProfileController profileController = ProfileController();
  final LoginOneController loginOneController = LoginOneController();
  final HomescreenController homescreenController = HomescreenController();
  final MessageController messageController = MessageController();
  final MessagesUnreadOneController messagesUnreadOneController = MessagesUnreadOneController();
  final AppliedJobController appliedJobController = AppliedJobController();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      translations: AppLocalization(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      title: 'final_project',
      initialBinding: BindingsBuilder(() {
        Get.put(LoginOneController());
        Get.put(EditProfileService());
        Get.put(onboardingOneController);
        Get.put(createAccountFourTabContainerController);
        Get.put(profileController);
        Get.put(homescreenController);
        Get.put(messagesUnreadOneController);
        Get.put(appliedJobController);
      }),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      home: RootScreen(),
    );
  }
}
