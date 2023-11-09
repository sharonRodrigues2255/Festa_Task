import 'package:festa_task/utils/constants/color_constants.dart';
import 'package:festa_task/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class LogoutDrawerWidget extends StatelessWidget {
  const LogoutDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double circleAvatarRadius = MediaQuery.of(context).size.width / 4;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: AppBar().preferredSize.height),
        child: Drawer(
          backgroundColor: ColorConstants.baseColor,
          elevation: 0,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              SizedBox(
                height: circleAvatarRadius / 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: circleAvatarRadius,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: circleAvatarRadius - 5,
                        ),
                      ),
                      SizedBox(
                        height: circleAvatarRadius / 2,
                      ),
                      Text(
                        "Sarah",
                        style:
                            myBoldText(fontweight: FontWeight.w800, size: 22),
                      ),
                      SizedBox(
                        height: circleAvatarRadius / 2.2,
                      ),
                      Text(
                        "email: ",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: circleAvatarRadius / 5,
                      ),
                      Text(
                        "phone:  ",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: circleAvatarRadius * 1.5,
                      ),
                      Container(
                        height: 60,
                        width: circleAvatarRadius * 2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Center(
                            child: Text(
                          "LOG OUT",
                          style: myBoldText(color: ColorConstants.baseColor),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
