import '../../../core/app_export.dart';/// This class is used in the [messageslist_item_widget] screen.
class MessageslistItemModel {MessageslistItemModel({this.circleImage, this.message, this.twitter, this.oneThousandTwoHundredThirtyNin, this.hereIsTheLink, this.id, }) { circleImage = circleImage  ?? Rx(ImageConstant.imgTwitterLogo);message = message  ?? Rx("1");twitter = twitter  ?? Rx("Twitter");oneThousandTwoHundredThirtyNin = oneThousandTwoHundredThirtyNin  ?? Rx("12.39");hereIsTheLink = hereIsTheLink  ?? Rx("Here is the link: http://zoom.com/abcdeefg");id = id  ?? Rx(""); }

Rx<String>? circleImage;

Rx<String>? message;

Rx<String>? twitter;

Rx<String>? oneThousandTwoHundredThirtyNin;

Rx<String>? hereIsTheLink;

Rx<String>? id;

 }
