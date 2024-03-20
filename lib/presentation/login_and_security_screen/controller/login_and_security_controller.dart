import 'package:final_project/core/app_export.dart';import 'package:final_project/presentation/login_and_security_screen/models/login_and_security_model.dart';/// A controller class for the LoginAndSecurityScreen.
///
/// This class manages the state of the LoginAndSecurityScreen, including the
/// current loginAndSecurityModelObj
class LoginAndSecurityController extends GetxController {Rx<LoginAndSecurityModel> loginAndSecurityModelObj = LoginAndSecurityModel().obs;

 }
