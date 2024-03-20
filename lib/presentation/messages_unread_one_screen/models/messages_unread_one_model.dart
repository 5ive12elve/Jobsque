import '../../../core/app_export.dart';import 'messagesunreadlist_item_model.dart';/// This class defines the variables used in the [messages_unread_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesUnreadOneModel {Rx<List<MessagesunreadlistItemModel>> messagesunreadlistItemList = Rx([MessagesunreadlistItemModel(circleImage:ImageConstant.imgTwitterLogo.obs,message: "1".obs,twitter: "Twitter".obs,oneThousandTwoHundredThirtyNin: "12.39".obs,hereIsTheLink: "Here is the link: http://zoom.com/abcdeefg".obs)]);

 }
