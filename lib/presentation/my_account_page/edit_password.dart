import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:get/get.dart';

import '../../widgets/custom_elevated_button.dart';
import 'controller/profile_controller.dart';

class EditPassword extends StatelessWidget {
  EditPassword();

  ProfileController con = Get.put(ProfileController());

  final oldPasswordCtrl = TextEditingController();
  final newPasswordCtrl = TextEditingController();
  final confirmPasswordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                      'Edit Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ]),
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
                  controller: oldPasswordCtrl,
                  // enabled: false, // focusNode: _model.value,
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'current Password',
                    suffixIcon: const Icon(Icons.link_sharp),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.lock,
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
                  controller: newPasswordCtrl,
                  // enabled: false, // focusNode: _model.value,
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'New Password',
                    suffixIcon: const Icon(Icons.link_sharp),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.lock,
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
                  controller: confirmPasswordCtrl,
                  // enabled: false, // focusNode: _model.value,
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    suffixIcon: const Icon(Icons.link_sharp),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.lock,
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
                  if(newPasswordCtrl.text==confirmPasswordCtrl.text){
                    con.updatePassword({
                      'current_password': oldPasswordCtrl.text,
                      'new_password': newPasswordCtrl.text,
                      'new_password_confirmation': confirmPasswordCtrl.text
                    });
                  }else{
                    Get.snackbar(LocalizationExtension('trainer').tr, LocalizationExtension('new Password Not Equal Confirm Password ').tr);
        
                  }
        
                    })
        
            ),
          ],
        ),
      ),
    );
  }
}
