import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/utils/style/AppColors.dart';

import '../../routes/app_pages.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 14, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Task Management',
                  style: TextStyle(fontSize: 30, color: AppColors.primaryText),
                ),
                Text(
                  'Manage task made easy with friends',
                  style: TextStyle(fontSize: 16, color: AppColors.primaryText),
                )
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(
                    left: 40,
                    right: 10,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.cyan)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: AppColors.primaryText,
                  ),
                  hintText: 'Search',
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(Ionicons.notifications, color: AppColors.primaryText),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: 'Sign Out',
                  content: const Text('Are you sure?'),
                  cancel: ElevatedButton(
                      onPressed: () => Get.back(), child: const Text('Cancel')),
                  confirm: ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN),
                    child: const Text('Sign Out'),
                  ),
                );
              },
              child: Row(
                children: const [
                  Text(
                    'Sign Out',
                    style: TextStyle(color: AppColors.primaryText),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Ionicons.log_out_outline,
                    color: AppColors.primaryText,
                    size: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
