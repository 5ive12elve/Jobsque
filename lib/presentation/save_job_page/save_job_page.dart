import '../applied_job_one_screen/database_helper/database_helper.dart';
import '../profile/controller/profile_controller.dart';
import 'controller/save_job_controller.dart';
import 'models/save_job_model.dart';
import 'package:final_project/core/app_export.dart';
import 'package:final_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:final_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:final_project/widgets/app_bar/custom_app_bar.dart';
import 'package:final_project/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SaveJobPage extends StatelessWidget {
  SaveJobPage({Key? key}) : super(key: key);
  SaveJobController controller = Get.put(SaveJobController(SaveJobModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            children: [
              SizedBox(height: 3.v),
              CustomOutlinedButton(
                height: 36.v,
                text: "Job Saved".tr,
                buttonStyle: CustomButtonStyles.outlineGray,
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              SizedBox(height: 27.v),
              Expanded(
                child: _buildSavedJobsList(), // Display saved jobs
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 55.v,
      leadingWidth: 48.h,
      centerTitle: true,
      title: AppbarSubtitle(text: "lbl_saved".tr),
    );
  }

  Widget _buildSavedJobsList() {
    String user_email = Get.find<ProfileController>().userProfile.value?.email.toString() ?? 'abc@def.com';
    final DatabaseHelper dbHelper = DatabaseHelper();

    return FutureBuilder<List<Job>>(
      future: dbHelper.getJobsByUserEmail(user_email),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text("Error: ${snapshot.error}"),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(
            child: Text(
              "No saved jobs yet.",
              style: TextStyle(fontSize: 16.0),
            ),
          );
        } else {
          List<Job> savedJobs = snapshot.data!;
          return ListView.builder(
            itemCount: savedJobs.length,
            itemBuilder: (context, index) {
              Job job = savedJobs[index];
              return _buildSavedJobItem(job);
            },
          );
        }
      },
    );
  }

  Widget _buildSavedJobItem(Job job) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
      child: ListTile(
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${job.jobName}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily: 'SF PRO',
                  ),
                ),
                Text("Applied as: ${job.jobType}",
                style: TextStyle(
                  color: Colors.black38,
                  fontFamily: 'SF PRO',
                  fontSize: 14,
                  fontWeight: FontWeight.w900
                ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: _buildJobImage(job.jobImage),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJobImage(String? imageUrl) {
    return imageUrl != null
        ? Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      ),
    )
        : Container(); // A placeholder if the image URL is null
  }
}
