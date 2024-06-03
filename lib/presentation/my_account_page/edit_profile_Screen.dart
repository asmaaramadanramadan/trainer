// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: sort_child_properties_last

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/custom_elevated_button.dart';
import 'controller/profile_controller.dart';

class ProfileScreen extends StatefulWidget {
  final name, image,email;

  var gender;

  String about_us;
  ProfileScreen({
    Key? key,
    required this.name,
    required this.image,
    required this.gender,
    required this.about_us, required this.email,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _Profil_ScreenState();
}

class _Profil_ScreenState extends State<ProfileScreen> {
  File? imageFileFirst;
  String imageFirst = "";
  final picker = ImagePicker();
  bool imageEroor = false;
  final phoneNumberCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final nameCtrl = TextEditingController();


  final GlobalKey<FormState> _formimage = GlobalKey<FormState>();




  chooseImage_camera() async {
    final pickedFile =
    await picker.pickImage(source: ImageSource.camera, imageQuality: 85);
    return pickedFile;
  }

  chooseImage_gallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    return pickedFile;
  }

  Widget _buildImageWidget(File? imageFile, String imageUrl) {
    return imageFile != null
        ? Image.file(
      imageFile,
      fit: BoxFit.cover,
    )
        : imageUrl.isNotEmpty
        ? Image.network(
      imageUrl,
    )
            : Icon(Icons.add_a_photo);
  }

  Future<void> _showImagePickerDialog(
      BuildContext context, int imageIndex) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Choose Image Source"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () async {
                  Navigator.pop(context); // Close the dialog
                  final image = await chooseImage_camera();
                  if (image != null) {
                    setState(() {
                      // Update the image file based on the selected index
                      switch (imageIndex) {
                        case 1:
                          imageFileFirst = File(image.path);
                          break;

                        default:
                          break;
                      }
                    });
                  }
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text("Camera"),
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: () async {
                  Navigator.pop(context); // Close the dialog
                  final image = await chooseImage_gallery();
                  if (image != null) {
                    setState(() {
                      // Update the image file based on the selected index
                      switch (imageIndex) {
                        case 1:
                          imageFileFirst = File(image.path);
                          break;
                        default:
                          break;
                      }
                    });
                  }
                },
                icon: const Icon(Icons.photo_library),
                label: const Text("Gallery"),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  SingleChildScrollView(
          child: GetBuilder(
            init: ProfileController(),
            builder: (ProfileController con) {
              return  Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child:             Container(
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v),
                              decoration: BoxDecoration(
                                color: appTheme.blueGray10001,
                                borderRadius: BorderRadius.circular(
                                  14.h,
                                ),
                              ),
                              child: Icon(Icons.arrow_back),
                            ),

                          ),
                          const Text(
                            'Edit Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ]),
                  ),
                  Container(
                    padding:
                    const EdgeInsets.only(right: 20, left: 20, top: 20),
                    decoration: BoxDecoration(
                      // color: const Color.fromARGB(255, 236, 101, 197)
                      // .withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding:
                      const EdgeInsets.only(right: 20, left: 20, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(shape: BoxShape.circle),
                            child: ClipOval(
                              child: Image.network(
                                widget.image,
                                fit: BoxFit.cover,
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            widget.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.email),
                              const SizedBox(
                                width: 15,
                              ),
                               Text(
                                widget.email,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Form(
                    key: _formimage,
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: imageEroor ? Colors.red : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                      transform: imageEroor
                          ? Matrix4.translationValues(5, 0, 0)
                          : Matrix4.identity(),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 25, left: 25, bottom: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () =>
                                        _showImagePickerDialog(context, 1),
                                    child: Container(
                                      clipBehavior: Clip.antiAlias,
                                      height:
                                      MediaQuery.sizeOf(context).width /
                                          2.4,
                                      child: _buildImageWidget(
                                          imageFileFirst, imageFirst),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                            Colors.grey.withOpacity(0.2),
                                            spreadRadius: 1,
                                            blurRadius: 2,
                                            offset: const Offset(0, 3),
                                          ),
                                        ],
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding:
                    const EdgeInsets.only(right: 25, left: 25, top: 20),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: nameCtrl,
                        // enabled: false, // focusNode: _model.value,
                        textAlign: TextAlign.center,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          suffixIcon: const Icon(Icons.link_sharp),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.person,
                              size: 20,
                            ),
                          ),
                          prefixIconConstraints:
                          const BoxConstraints(maxHeight: 35),
                          // hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        // style: FlutterFlowTheme.of(context).bodyMedium,
                        // validator:
                        //     _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(right: 25, left: 25, top: 20),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: emailCtrl,
                        // enabled: false, // focusNode: _model.value,
                        textAlign: TextAlign.center,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          suffixIcon: const Icon(Icons.link_sharp),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                                Icons.email,
                                size: 20,
                              ),
                          ),
                          prefixIconConstraints:
                          const BoxConstraints(maxHeight: 35),
                          // hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        // style: FlutterFlowTheme.of(context).bodyMedium,
                        // validator:
                        //     _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(right: 25, left: 25, top: 20),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: phoneNumberCtrl,
                        // enabled: false, // focusNode: _model.value,
                        textAlign: TextAlign.center,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          suffixIcon: const Icon(Icons.link_sharp),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.phone,
                              size: 20,
                            ),
                          ),
                          prefixIconConstraints:
                          const BoxConstraints(maxHeight: 35),
                          // hintStyle: FlutterFlowTheme.of(context).bodyLarge,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        // style: FlutterFlowTheme.of(context).bodyMedium,
                        // validator:
                        //     _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),


                  const SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 35, right: 25, left: 25, bottom: 35),
                    child: con.isLoading
                        ? Material(
                      color: Colors.transparent,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.blue)),
                        child: const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            )),
                      ),
                    )
                        :
                    CustomElevatedButton(text: LocalizationExtension("lbl_save").tr,
                        onPressed: () {
                      con.updateProfile({
                        'name': nameCtrl.text,
                        'email': emailCtrl.text,
                        'phone': phoneNumberCtrl.text,
                        'country_id': '1'
                      });
                        })

                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }

}
