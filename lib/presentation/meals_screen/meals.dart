import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'meals_details.dart';
import 'meals_model.dart';

class MealsScreen extends StatefulWidget {
  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Nutrition Plan'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Container(
        child: FutureBuilder(
            future: getMeals(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List data = snapshot.data as List;
                return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${index + 1} Meal : '),
                              ...List.generate(
                                  data[index].length,
                                  (index1) => InkWell(
                                        onTap: () {
                                          Get.to(RecipeDetailScreen(
                                            recipe: Recipe.fromJson({
                                              "Calories": data[index][index1]
                                                  ['Calories'],
                                              "CarbohydrateContent":data[index][index1]
                                              ['CarbohydrateContent'],
                                              "CholesterolContent":data[index][index1]
                                              ['CholesterolContent'],
                                              "CookTime": data[index][index1]
                                              ['CookTime'],
                                              "FatContent":data[index][index1]
                                              ['FatContent'],
                                              "FiberContent": data[index][index1]
                                              ['FiberContent'],
                                              "Name":
                                              data[index][index1]
                                              ['Name'],
                                              "PrepTime":data[index][index1]
                                              ['PrepTime'],
                                              "ProteinContent": data[index][index1]
                                              ['ProteinContent'],
                                              "RecipeId": data[index][index1]
                                              ['RecipeId'],
                                              "RecipeIngredientParts": data[index][index1]
                                              ['RecipeIngredientParts'],
                                              "RecipeInstructions": data[index][index1]
                                              ['RecipeInstructions'],
                                              "SaturatedFatContent": data[index][index1]
                                              ['SaturatedFatContent'],
                                              "SodiumContent":data[index][index1]
                                              ['SodiumContent'],
                                              "SugarContent": data[index][index1]
                                              ['SugarContent'],
                                              "TotalTime": data[index][index1]
                                              ['TotalTime'],
                                              "image_link":
                                              data[index][index1]
                                              ['image_link']
                                            }),
                                          ));
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 80,
                                              height: 80,
                                              margin: EdgeInsets.all(12),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      data[index][index1]
                                                          ['image_link']),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Text(
                                                data[index][index1]['Name'],
                                                textAlign: TextAlign.center,
                                                maxLines: 3,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ))
                            ],
                          ),
                        ));
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }

  Future getMeals() async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('http://34.192.252.7:8000/recommendations'));
    request.body = json.encode({
      "age": 30,
      "height": 170,
      "weight": 70,
      "gender": "Male",
      "activity": 1,
      "weight_loss": 2,
      "number_of_meals": 3
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var data = await response.stream.bytesToString();

      return json.decode(data);
    } else {
      print(response.reasonPhrase);
    }
  }
}
