import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class WorkPlan extends StatefulWidget {
  @override
  State<WorkPlan> createState() => _WorkPlanState();
}

class _WorkPlanState extends State<WorkPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work Plan'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: FutureBuilder(
          future: getWorkPlan(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Map data = snapshot.data as Map;
              return ListView.separated(
                itemCount: data['workout_plan'].length,
                itemBuilder: (context, index) {
                  String day = data['workout_plan'].keys.elementAt(index);
                  List<dynamic> exercises = data['workout_plan'][day];

                  return ExpansionTile(
                    title: Text(day),
                    children: exercises.map<Widget>((exercise) {
                      if (exercise['exercise'] == 'Rest') {
                        return ListTile(
                          title: Text('${index+1}  ' +exercise['exercise']),
                        );
                      } else {
                        return ListTile(
                          title: Text('${index+1}  ' +exercise['exercise']),
                          subtitle: Text(
                              'Reps: ${exercise['reps']} | Sets: ${exercise['sets']}'),
                        );
                      }
                    }).toList(),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(color: Colors.blueAccent,),
                    ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Future getWorkPlan() async {
    var request = http.Request(
        'GET',
        Uri.parse(
            'http://muhap.pythonanywhere.com/workout_plan?gender=male&age=23&bmi=25&goal=to gain muscles&days=3&height=175&weight=60'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();

      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }
}
