import 'package:flutter/material.dart';
import 'package:gym_app/core/constants/app_string.dart';
import 'package:gym_app/core/constants/app_style.dart';

import '../../../core/constants/app_images.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.grey,
            size: 28.0,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.supervisor_account,
              color: Colors.grey,
              size: 28.0,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    AppString.store,
                    style:   TextStyle(fontWeight: FontWeight.bold, fontSize: 32,color: Colors.black87),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                height: 200,
                width: double.maxFinite,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Stack(
                    children: [
                      Image.network(AppImages.trainingPlan,),
                      Positioned(
                          bottom: 24,
                          left: 48,
                          child: Text(
                            AppString.trainingPlan,
                            style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 32,color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Stack(
                children: [
                  Image.network(AppImages.mealPlan),
                  Positioned(
                      bottom: 24,
                      left: 48,
                      child: Text(
                        AppString.mealPlan,
                        style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 32,color: Colors.white),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Stack(
                children: [
                  Image.network(AppImages.supplementPlan),
                  Positioned(
                      bottom: 24,
                      left: 48,
                      child: Text(
                        AppString.supplementaryPlan,
                        style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 32,color: Colors.white),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Stack(
                children: [
                  Image.network(AppImages.workOutPlan),
                  Positioned(
                      bottom: 24,
                      left: 48,
                      child: Text(
                        AppString.workoutPlan,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32,color: Colors.white),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(21)),
            )
          ],
        ),
      ),
    );
  }
}
