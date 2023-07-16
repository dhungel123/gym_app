import 'package:flutter/material.dart';
import 'package:gym_app/core/constants/app_string.dart';
import 'package:gym_app/feature/store_page/presentation/widgets/store_block.dart';
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
                  padding: EdgeInsets.only(left: 12, top: 12),
                  child: Text(
                    AppString.store,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.black87),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            StoreBlock(
              textName: AppString.trainingPlan,
              imagePath: AppImages.trainingPlan,
            ),
            SizedBox(
              height: 16,
            ),
            StoreBlock(
                textName: AppString.mealPlan, imagePath: AppImages.mealPlan),
            SizedBox(
              height: 16,
            ),
            StoreBlock(
                textName: AppString.supplementaryPlan,
                imagePath: AppImages.supplementPlan),
            SizedBox(
              height: 16,
            ),
            StoreBlock(
                textName: AppString.workoutPlan,
                imagePath: AppImages.workOutPlan),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
