import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/utils/style/AppColors.dart';
import '../../../data/controller/auth_controller.dart';
import '../../../utils/widget/header.dart';
import '../../../utils/widget/myfriends.dart';
import '../../../utils/widget/peopleyoumayknow.dart';
import '../../../utils/widget/sidebar.dart';
import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authCon = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(width: 150, child: Sidebar()),
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
                  const SizedBox(
                    height: 1,
                  ),
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Row(
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
                                    width: 5,
                                  ),
                                  Column(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            fontSize: 10,
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
                                      foregroundImage: AssetImage(
                                          'assets/images/avatar.jpg'),
                                    ),
                                  )
                                ],
                              ),
                              context.isPhone
                                  ? TextField(
                                      onChanged: (value) =>
                                          authCon.searchFriends(value),
                                      controller:
                                          authCon.searchFriendsController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: const EdgeInsets.only(
                                          left: 40,
                                          right: 10,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                                color: Colors.cyan)),
                                        prefixIcon: const Icon(
                                          Icons.search,
                                          color: AppColors.primaryText,
                                        ),
                                        hintText: 'Search',
                                      ),
                                    )
                                  : const SizedBox(),
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
                      child: Obx(
                        () => authCon.hasilPencarian.isEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'People You May Know',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: AppColors.primaryText),
                                  ),
                                  PeopleYouMayKnow(),
                                  myFriends()
                                ],
                              )
                            : ListView.builder(
                                padding: EdgeInsets.all(8),
                                shrinkWrap: true,
                                itemCount: authCon.hasilPencarian.length,
                                itemBuilder: (context, index) => ListTile(
                                  onTap: () => authCon.addFriends(
                                      authCon.hasilPencarian[index]['email']),
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image(
                                      image: NetworkImage(authCon
                                          .hasilPencarian[index]['photo']),
                                    ),
                                  ),
                                  title: Text(
                                      authCon.hasilPencarian[index]['name']),
                                  subtitle: Text(
                                      authCon.hasilPencarian[index]['email']),
                                  trailing: const Icon(Ionicons.add),
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
