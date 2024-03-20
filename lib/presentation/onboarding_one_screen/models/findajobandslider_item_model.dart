import 'package:get/get_rx/src/rx_types/rx_types.dart';

class FindajobandsliderItemModel {
 Rx<String>? exploreOver;
 Rx<int>? id;
 Rx<String>? findAJobText;
 Rx<String>? blackagain;
 Rx<String>? startBuildingText; // New property for startBuilding text
 String imagePath;

 FindajobandsliderItemModel({
  this.exploreOver,
  this.id,
  this.findAJobText,
  this.blackagain,
  this.startBuildingText,
  required this.imagePath,
 }) {
  blackagain = blackagain ?? Rx("");
  findAJobText = findAJobText ?? Rx("");
  startBuildingText = startBuildingText ?? Rx("");
  exploreOver = exploreOver ?? Rx("");
  id = id ?? Rx(0);
 }
}
