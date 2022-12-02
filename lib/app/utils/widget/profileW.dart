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
                      foregroundImage: NetworkImage(
                          'https://lh3.googleusercontent.com/zJL71AFYS1nGSRTsRU5Nt1xCwOfVFmwzzD87m_f4EcSIGGcX2esmHOOrfoGmrs4Zoov52EZ2EXHakBAPlcc7Qw4jLte5KGte=w960-rj-nu-e365'),
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
                        'Tiara Monika',
                        style: TextStyle(
                            color: AppColors.primaryText, fontSize: 30),
                      ),
                      Text(
                        'tiara.monika.ti.20@cic.ac.id',
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
                      foregroundImage: NetworkImage(
                          'https://lh3.googleusercontent.com/zJL71AFYS1nGSRTsRU5Nt1xCwOfVFmwzzD87m_f4EcSIGGcX2esmHOOrfoGmrs4Zoov52EZ2EXHakBAPlcc7Qw4jLte5KGte=w960-rj-nu-e365'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Tiara Monika',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 30),
                  ),
                  Text(
                    'tiara.monika.ti.20@cic.ac.id',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 15),
                  ),
                ],
              ),
            ),
    );
  }
}
