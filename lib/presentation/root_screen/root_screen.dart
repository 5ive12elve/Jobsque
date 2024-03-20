import 'package:final_project/presentation/applied_job_three_screen/applied_job_three_screen.dart';
import 'package:final_project/presentation/homescreen/homescreen.dart';
import 'package:final_project/presentation/messages_unread_one_screen/messages_unread_one_screen.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../profile/profile_screen.dart';
import '../save_job_page/save_job_page.dart';


class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _currentIndex = 0; // Initialize with 0 as default index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildCurrentScreen(),
      bottomNavigationBar: CustomBottomBar(
        selectedIndex: _currentIndex, // Pass current index to the bottom bar
        onChanged: (BottomBarEnum type) {
          setState(() {
            // Update the current index based on the bottom bar event
            _currentIndex = type.index;
          });
        },
      ),
    );
  }

  Widget _buildCurrentScreen() {
    switch (_currentIndex) {
      case 0:
        return Homescreen();
      case 1:
        return MessagesUnreadOneScreen();
      case 2:
        return AppliedJobThreeScreen();
      case 3:
        return SaveJobPage();
      case 4:
        return ProfileScreen();
      default:
        return Container(); // Handle default case appropriately
    }
  }
}
