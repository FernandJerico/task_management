import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/routes/app_pages.dart';

import '../style/AppColors.dart';

class myFriends extends StatelessWidget {
  const myFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'My Friends',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 30),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                    child: const Text(
                      'More',
                      style:
                          TextStyle(color: AppColors.primaryText, fontSize: 20),
                    ),
                  ),
                  const Icon(
                    Ionicons.chevron_forward,
                    color: AppColors.primaryText,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 400,
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: context.isPhone ? 2 : 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: const Image(
                                image: AssetImage('assets/images/login.png'),
                                height: 125,
                              ),
                            ),
                            SizedBox(),
                            const Text(
                              'Alicia Jasmine',
                              style: TextStyle(
                                  color: AppColors.primaryText, fontSize: 15),
                            )
                          ],
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
