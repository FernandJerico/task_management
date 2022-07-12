import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/utils/style/AppColors.dart';
import '../../../utils/widget/header.dart';
import '../../../utils/widget/myfriends.dart';
import '../../../utils/widget/sidebar.dart';
import '../../../utils/widget/upcommingtask.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const Sidebar(),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(
                    flex: 2,
                    child: Sidebar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Task Management',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.primaryText),
                                  ),
                                  Text(
                                    'Manage task made easy with friends',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.primaryText),
                                  )
                                ],
                              ),
                              const Spacer(),
                              const Icon(Ionicons.notifications,
                                  color: AppColors.primaryText),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 25,
                                  foregroundImage:
                                      AssetImage('assets/images/avatar.jpg'),
                                ),
                              )
                            ],
                          ),
                        ),
                  // content / isi page / screen
                  Expanded(
                      child: Container(
                    padding: !context.isPhone
                        ? const EdgeInsets.all(50)
                        : const EdgeInsets.all(20),
                    margin: !context.isPhone
                        ? const EdgeInsets.all(10)
                        : const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: !context.isPhone
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Get.height * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'My Task',
                                style: TextStyle(
                                    color: AppColors.primaryText, fontSize: 30),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              // my task
                              SizedBox(
                                height: 200,
                                child: ListView(
                                  clipBehavior: Clip.antiAlias,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  children: [
                                    Container(
                                      width: 400,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColors.cardBg),
                                      margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: AssetImage(
                                                      'assets/images/avatar.jpg'),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: AssetImage(
                                                      'assets/images/avatar.jpg'),
                                                ),
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.primaryBg,
                                                child: const Center(
                                                    child: Text(
                                                  '100 %',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryText),
                                                )),
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                                child: Text(
                                              '10 / 10 Task',
                                              style: TextStyle(
                                                  color: AppColors.primaryText),
                                            )),
                                          ),
                                          const Text(
                                            'Pemrograman Mobile',
                                            style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 15),
                                          ),
                                          const Text(
                                            'Deadline 2 hari lagi',
                                            style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColors.cardBg),
                                      margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: AssetImage(
                                                      'assets/images/avatar.jpg'),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: AssetImage(
                                                      'assets/images/avatar.jpg'),
                                                ),
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.primaryBg,
                                                child: const Center(
                                                    child: Text(
                                                  '100 %',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryText),
                                                )),
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                                child: Text(
                                              '10 / 10 Task',
                                              style: TextStyle(
                                                  color: AppColors.primaryText),
                                            )),
                                          ),
                                          const Text(
                                            'Pemrograman Mobile',
                                            style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 15),
                                          ),
                                          const Text(
                                            'Deadline 2 hari lagi',
                                            style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColors.cardBg),
                                      margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: AssetImage(
                                                      'assets/images/avatar.jpg'),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: AssetImage(
                                                      'assets/images/avatar.jpg'),
                                                ),
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: AppColors.primaryBg,
                                                child: const Center(
                                                    child: Text(
                                                  '100 %',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryText),
                                                )),
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                                child: Text(
                                              '10 / 10 Task',
                                              style: TextStyle(
                                                  color: AppColors.primaryText),
                                            )),
                                          ),
                                          const Text(
                                            'Pemrograman Mobile',
                                            style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 15),
                                          ),
                                          const Text(
                                            'Deadline 2 hari lagi',
                                            style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              const UpCommingTask(),
                              myFriends(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
