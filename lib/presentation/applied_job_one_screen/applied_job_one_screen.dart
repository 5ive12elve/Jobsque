import 'dart:convert';
import 'package:final_project/presentation/root_screen/root_screen.dart';

import '../login_one_screen/controller/login_one_controller.dart';
import '../profile/controller/profile_controller.dart';
import 'package:http/http.dart' as http;
import 'package:final_project/core/app_export.dart';
import 'controller/applied_job_one_controller.dart';
import '../../widgets/custom_icon_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';

import 'database_helper/database_helper.dart';



class AppliedJobOneScreen extends StatelessWidget {
  final Map<String, dynamic> jobData;

  AppliedJobOneScreen({required this.jobData});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final JobApplicationController _controller = Get.find();

  // File variables for cv_file and other_file
  File? cvFile;
  File? otherFile;

  // Controllers for text form fields
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Extract jobID from the jobData
    int jobId = Get.arguments?['jobID'] ?? 0; // Replace 'jobID' with the actual key

    return Scaffold(
      appBar: AppBar(
        title: Text('Applied Job $jobId'), // Dynamically set the title
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          height: 150.adaptSize,
                          width: 150.adaptSize,
                          padding: EdgeInsets.all(0.h),
                          decoration: IconButtonStyleHelper
                              .gradientDeepPurpleAToIndigoA,
                          alignment: Alignment.center,
                          child: CustomImageView(
                            imagePath: Get.arguments?['jobImage'] ?? '',
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            Get.arguments?['jobName'] ?? '',
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            Get.arguments?['jobType'] ?? '',
                            style: CustomTextStyles.titleSmallPrimary,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            Get.arguments?['compName'] ?? '',
                            style: CustomTextStyles.bodyMediumBluegray800,
                          ),
                        ),
                        SizedBox(height: 4.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            Get.arguments?['compEmail'] ?? '',
                            style: CustomTextStyles.bodyMediumBluegray500,
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildColumn("Fulltime"),
                            _buildColumn("Remote"),
                            _buildColumn("Design"),
                          ],
                        ),
                        SizedBox(height: 32.v),
                        ElevatedButton(
                          onPressed: () async {
                            cvFile = await _pickFile();
                          },
                          style: ElevatedButton.styleFrom(
                            padding:
                            EdgeInsets.all(25.0), // Padding around the button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  28.0), // Border radius
                            ),
                            elevation: 2.0, // Elevation shadow
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.file_upload, color: Colors.white),
                              SizedBox(width: 8.0),
                              Text(
                                'Choose CV File',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                        ElevatedButton(
                          onPressed: () async {
                            otherFile = await _pickFile();
                          },
                          style: ElevatedButton.styleFrom(
                            padding:
                            EdgeInsets.all(25.0), // Padding around the button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  28.0), // Border radius
                            ),
                            elevation: 2.0, // Elevation shadow
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.file_upload, color: Colors.white),
                              SizedBox(width: 8.0),
                              Text(
                                'Choose Other File',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                        TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(labelText: 'Name:'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16.v),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(labelText: 'Email'),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !GetUtils.isEmail(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16.v),
                        TextFormField(
                          controller: _mobileController,
                          decoration: InputDecoration(labelText: 'Mobile'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your mobile number';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 36),
                        ElevatedButton(


                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              _submitData();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              padding:
                              EdgeInsets.all(25.0), // Padding around the button
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    28.0), // Border radius
                              ),
                              elevation: 2.0,
                          ),
                          child: Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColumn(String text) {
    return Column(
      children: [
        Container(
          width: 90.h,
          height: 40.v,
          decoration: BoxDecoration(
            color: Color.fromARGB(44, 0, 152, 255),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<File?> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      return File(result.files.single.path!);
    }
    return null;
  }

  void _submitData() async {
    String name = _nameController.text.trim();
    String email = _emailController.text.trim();
    String mobile = _mobileController.text.trim();
    String type = Get.arguments?['jobType'] ?? '';
    dynamic job_id = Get.arguments?['jobID'].toString() ?? '';
    dynamic user_id = Get.find<ProfileController>().userProfile.value?.id.toString() ?? '1000';
    String user_email = Get.find<ProfileController>().userProfile.value?.email.toString() ?? 'abc@def.com';
    final String? authToken = await Get.find<LoginOneController>().getToken();

    if (name.isEmpty) {
      // Display an error message or handle it as needed
      print("Name is empty!!!");
    }

    // Check if cvFile and otherFile are selected
    if (cvFile == null || otherFile == null) {
      // Display a message to the user
      Get.snackbar(
        'File Selection Error',
        'Please select both CV and Other files.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    print('Name: $name');
    print('Email: $email');
    print('Mobile: $mobile');
    print('Job Type: $type');
    print('Job ID: $job_id');
    print('User ID: $user_id');
    print('CV File Path: ${cvFile?.path}');
    print('Other File Path: ${otherFile?.path}');

    File cvFile_itself = File(cvFile!.path);
    List<int> cvFileBytes = await cvFile_itself.readAsBytes();

    // Read the other file
    File otherFile_itself = File(otherFile!.path);
    List<int> otherFileBytes = await otherFile_itself.readAsBytes();

    Map<String, String> postData = {
      'name': name,
      'email': email,
      'mobile': mobile,
      'work_type': type,
      'jobs_id': job_id,
      'user_id': user_id,
    };

    Map<String, String> stringData = postData.map((key, value) => MapEntry(key, value.toString()));

    print('CV File Size: ${await cvFile!.length()} bytes');
    print('Other File Size: ${await otherFile!.length()} bytes');

    // Create a multipart request
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('https://project2.amit-learning.com/api/apply'),
    );

    request.headers.addAll({
      'Authorization': 'Bearer $authToken',
    });

    // Add form fields
    request.fields.addAll(stringData);

    // Add CV file
    request.files.add(http.MultipartFile(
      'cv_file',
      http.ByteStream.fromBytes(cvFileBytes),
      cvFileBytes.length,
      filename: 'cv_file',
    ));

    // Add other file
    request.files.add(http.MultipartFile(
      'other_file',
      http.ByteStream.fromBytes(otherFileBytes),
      otherFileBytes.length,
      filename: 'other_file',
    ));

    var client = http.Client();

    // Send the request with chunked encoding
    var response = await client.send(request);

    // Handle the response
    if (response.statusCode == 200) {
      // Convert the response bytes to a string
      String responseBody = await http.ByteStream(response.stream).bytesToString();

      // Parse the JSON response
      Map<String, dynamic> jsonResponse = jsonDecode(responseBody);

      // Check if the 'status' key is true
      if (jsonResponse['status'] == true) {
        print('Application submitted successfully');

        // Print details from the 'data' key
        Map<String, dynamic> data = jsonResponse['data'];
        print('CV File: ${data['cv_file']}');
        print('Name: ${data['name']}');
        print('Email: ${data['email']}');
        print('Mobile: ${data['mobile']}');
        print('Work Type: ${data['work_type']}');
        print('Other File: ${data['other_file']}');
        print('Jobs ID: ${data['jobs_id']}');
        print('User ID: ${data['user_id']}');
        print('Reviewed: ${data['reviewed']}');
        print('Updated At: ${data['updated_at']}');
        print('Created At: ${data['created_at']}');
        print('ID: ${data['id']}');
      } else {
        print('Failed to submit application. Server returned a false status.');
      }
    } else {
      print('Failed to submit application. Status code: ${response.statusCode}');
      print('Response Status Code: ${response.statusCode}');
      print('Response Headers: ${response.headers}');
      print('Response Body: ${await response.stream.bytesToString()}');

      // You can handle the error here
    }
    client.close();
    final appJob = {
      'user_email': user_email,
      'job_type': type,
      'job_name': Get.arguments?['jobName'] ?? '',
      'job_image': Get.arguments?['jobImage'] ?? '',
    };

    // Create an instance of DatabaseHelper
    final DatabaseHelper dbHelper = DatabaseHelper();
    // Check if the user has already applied to this job
    final existingJob = await dbHelper.getJobByNameAndUser(user_email, appJob['job_name']);

    if (existingJob != null) {
      Get.snackbar(
        'Application Error',
        "Can't apply to job, already applied.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      await dbHelper.insertJob(Job(
        userEmail: appJob['user_email'],
        jobType: appJob['job_type'],
        jobName: appJob['job_name'],
        jobImage: appJob['job_image'],
      ));
      print("Applied to job successfully");
      print('Job in the database: $appJob');
      Get.snackbar(
        'Successful Application',
        "Applied to job successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.lightGreen,
        colorText: Colors.white,
      );
      Get.offAll(RootScreen());
    }
  }

  void printUserJobs() async {
    String user_email = Get.find<ProfileController>().userProfile.value?.email.toString() ?? 'abc@def.com';

    final DatabaseHelper dbHelper = DatabaseHelper();
    List<Job> userJobs = await dbHelper.getJobsByUserEmail(user_email);

    // Print the details of each job
    for (Job job in userJobs) {
      print('Job ID: ${job.id}');
      print('Job Type: ${job.jobType}');
      print('Job Name: ${job.jobName}');
      print('Job Image: ${job.jobImage}');
      print('-----------------------------');
    }
  }
}
