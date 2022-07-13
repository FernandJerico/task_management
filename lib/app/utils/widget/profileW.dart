import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/AppColors.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 120,
                      foregroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 20,
                // ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Fernand Jerico',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 30),
                      ),
                      Text(
                        'fernand.jerico.ti.20@cic.ac.id',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: const [
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 100,
                      foregroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Fernand Jerico',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 30),
                  ),
                  Text(
                    'fernand.jerico.ti.20@cic.ac.id',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
                  ),
                ],
              ),
            ),
    );
  }
}
