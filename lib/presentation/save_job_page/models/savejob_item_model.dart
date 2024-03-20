import '../../../core/app_export.dart';/// This class is used in the [savejob_item_widget] screen.
class SavejobItemModel {SavejobItemModel({this.twitter, this.seniorUIDesigner, this.twitterJakarta, this.duration, this.beAnEarlyApplicant, this.id, }) { twitter = twitter  ?? Rx(ImageConstant.imgTwitterWhiteA700);seniorUIDesigner = seniorUIDesigner  ?? Rx("Senior UI Designer");twitterJakarta = twitterJakarta  ?? Rx("Twitter • Jakarta, Indonesia ");duration = duration  ?? Rx("Posted 2 days ago");beAnEarlyApplicant = beAnEarlyApplicant  ?? Rx("Be an early applicant");id = id  ?? Rx(""); }

Rx<String>? twitter;

Rx<String>? seniorUIDesigner;

Rx<String>? twitterJakarta;

Rx<String>? duration;

Rx<String>? beAnEarlyApplicant;

Rx<String>? id;

 }
