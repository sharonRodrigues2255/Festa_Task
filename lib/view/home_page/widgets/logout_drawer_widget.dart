import 'package:festa_task/controller/home_page_provider.dart';
import 'package:festa_task/utils/constants/color_constants.dart';
import 'package:festa_task/utils/constants/text_styles.dart';
import 'package:festa_task/view/login_page/login_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogoutDrawerWidget extends StatelessWidget {
  const LogoutDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageController>(context);
    final index = provider.userIndex;
    final user = provider.randomUserData?.results?[index!];
    double mediawidth = kIsWeb
        ? MediaQuery.of(context).size.width / 4
        : MediaQuery.of(context).size.width;
    double mediaheight = MediaQuery.of(context).size.height;
    double circleAvatarRadius = mediawidth / 4;
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(top: kIsWeb ? 0.0 : AppBar().preferredSize.height),
        child: provider.isprofileloading
            ? SizedBox(
                width: mediawidth,
                child: Center(child: CircularProgressIndicator()),
              )
            : Container(
                color: ColorConstants.baseColor,
                height: double.maxFinite,
                child: Drawer(
                  backgroundColor: ColorConstants.baseColor,
                  elevation: 0,
                  width: mediawidth,
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
                                  backgroundImage:
                                      NetworkImage(user!.picture!.medium!),
                                ),
                              ),
                              SizedBox(
                                height: circleAvatarRadius / 2,
                              ),
                              Text(
                                user.name?.title ?? "",
                                style: myBoldText(
                                    fontweight: FontWeight.w800, size: 22),
                              ),
                              SizedBox(
                                height: circleAvatarRadius / 2.2,
                              ),
                              Text(
                                "email: ${user.email}",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: circleAvatarRadius / 5,
                              ),
                              Text(
                                "phone: ${user.phone} ",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: circleAvatarRadius * 1.5,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: Container(
                                  height: 60,
                                  width: circleAvatarRadius * 2,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Center(
                                      child: Text(
                                    "LOG OUT",
                                    style: myBoldText(
                                        color: ColorConstants.baseColor),
                                  )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
