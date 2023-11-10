import 'package:festa_task/controller/home_page_provider.dart';
import 'package:festa_task/utils/constants/color_constants.dart';
import 'package:festa_task/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilesGridview extends StatelessWidget {
  const ProfilesGridview({
    key,
    required this.containerWidgetHeight,
  }) : super(key: key);

  final double containerWidgetHeight;

  @override
  Widget build(BuildContext context) {
    double iconSize = containerWidgetHeight * 0.08;
    final provider = Provider.of<HomePageController>(context);

    return Column(
      children: [
        if (MediaQuery.of(context).size.width > 600)
          Container(
            height: containerWidgetHeight / 4.5,
            child: Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () {},
                  child: Container(
                    color: ColorConstants.baseColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                        child: Text(
                          "Filter",
                          style: myBoldText(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        Expanded(
          child: provider.isloading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemCount: provider.randomUserData?.results?.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width > 600 ? 2 : 1,
                    childAspectRatio: 1.45,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(border: Border.all()),
                        child: Stack(
                          children: [
                            Container(
                              color: ColorConstants.baseColor,
                              width: double.infinity,
                              height: containerWidgetHeight / 4.5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(height: 10),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: CircleAvatar(
                                    backgroundColor: ColorConstants.baseColor,
                                    radius: containerWidgetHeight / 5.2,
                                    child: Container(
                                      height:
                                          containerWidgetHeight / 5.2 * 2 - 6,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(provider
                                                    .randomUserData
                                                    ?.results?[index]
                                                    .picture
                                                    ?.large ??
                                                "https://static.vecteezy.com/system/resources/previews/011/948/553/non_2x/profile-not-exist-icon-user-white-contour-marked-with-red-line-remote-avatar-erased-from-memory-online-graphic-line-design-social-media-communication-and-correspondence-character-vector.jpg"),
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Hi my name is",
                                  style: TextStyle(
                                      color: ColorConstants.baseColor,
                                      fontSize: iconSize * .8),
                                ),
                                Text(
                                  provider.randomUserData?.results?[index].name
                                          ?.title ??
                                      "",
                                  style: myBoldText(
                                    size: iconSize,
                                    color: ColorConstants.baseColor,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Divider(
                                    thickness: 6,
                                    color: ColorConstants.baseColor,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.person_2_outlined,
                                      color: ColorConstants.baseColor,
                                      size: iconSize,
                                    ),
                                    Icon(
                                      Icons.email_outlined,
                                      color: ColorConstants.baseColor,
                                      size: iconSize,
                                    ),
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      size: iconSize - 2,
                                      color: ColorConstants.baseColor,
                                    ),
                                    Icon(
                                      Icons.map,
                                      color: ColorConstants.baseColor,
                                      size: iconSize,
                                    ),
                                    Icon(
                                      Icons.phone,
                                      color: ColorConstants.baseColor,
                                      size: iconSize,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: containerWidgetHeight * .05,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
