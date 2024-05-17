import 'package:flutter/material.dart';
import 'package:fty/core/app_export.dart';
import 'package:get/get.dart';

import 'controller/profile_controller.dart';
import 'edit_profile_Screen.dart';



// ignore: must_be_immutable
class ProfileSettings extends StatefulWidget {

  ProfileSettings({
    Key? key,

  }) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {

  @override
  Widget build(BuildContext context) {
    ProfileController controller =Get.put(ProfileController());

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: FutureBuilder(
            future:controller.getDataProfile() ,
            builder: (context,snapshot) {
              if(snapshot.hasData){
                Map data=snapshot.data as Map;
                return Container(
                  // height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(8),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.2),
                          //     spreadRadius: 5,
                          //     blurRadius: 7,
                          //     offset: Offset(0, 3), // changes position of shadow
                          //   ),
                          // ],
                          border: Border.all(color: Colors.white30, width: 1),
                        ),
                        child: Padding(
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

                              const Center(
                                child: Text(
                                  'Profile',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ProfileScreen(
                                            name: '${data['data']['name'] }',
                                            image: '${data['data']['image'] }',
                                            about_us: '${data['data']['injury_description'] }',
                                            gender: '${data['data']['gender'] }', email: '${data['data']['email'] }',
                                          )));
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.white),
                                  child: const Icon(
                                    Icons.edit,
                                    color: Color(0xff3F414E),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage('${data['data']['image'] }'),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(12),
                          ),
          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  data['data']['name'] + " (25)",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                if (data['data']['gender'] == "Femle")
                                  Image.asset("assets/images/female.png")
                                else
                                  Image.asset("assets/images/male.png"),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  data['data']['gender'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(Icons.date_range,size: 20,),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${data['data']['birth_date']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(Icons.phone,size: 20,),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${data['data']['phone']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(Icons.email,size: 20,),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${data['data']['email']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/muscle.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${data['data']['muscle']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/Length.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${data['data']['height']} cm",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
          
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/Weight.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${data['data']['weight']} KG",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Image.asset("assets/images/exercise.png", width: 20,
                                  height: 20,),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "${data['data']['exercise']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "injury Date",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                data['data']['injury_date'],
                                style: const TextStyle(fontSize: 11),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "injury Description",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                data['data']['injury_description'],
                                style: const TextStyle(fontSize: 11),
                              ),
                            ),

          
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
          
              }else{
                return Center(child: CircularProgressIndicator());
              }
            }
          ),
        ),
      ),
    );
  }
}
