import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
                children: const [
                  Text(
                    'My Friends',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 30),
                  ),
                  Spacer(),
                  Text(
                    'More',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  Icon(
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
                      itemCount: 8,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(
                                image: AssetImage('assets/images/login.png'),
                              ),
                            ),
                            Text(
                              'Alicia Jasmine',
                              style: TextStyle(color: AppColors.primaryText),
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
