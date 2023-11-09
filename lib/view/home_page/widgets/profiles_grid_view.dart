import 'package:festa_task/utils/constants/color_constants.dart';
import 'package:festa_task/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ProfilesGridview extends StatelessWidget {
  const ProfilesGridview({
    key,
    required this.containerWidgetHeight,
  }) : super(key: key);

  final double containerWidgetHeight;

  @override
  Widget build(BuildContext context) {
    double iconSize = containerWidgetHeight * 0.08;

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
                      child: Text(
                        "Filter",
                        style: myBoldText(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        Expanded(
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: MediaQuery.of(context).size.width > 600 ? 2 : 1,
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
                              child: CircleAvatar(
                                radius: containerWidgetHeight / 5.2 - 3,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Hi my name is",
                            style: TextStyle(color: ColorConstants.baseColor),
                          ),
                          Text(
                            "Sharon Rodrigues",
                            style: myBoldText(
                              color: ColorConstants.baseColor,
                            ),
                          ),
                          SizedBox(height: 6),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Divider(
                              thickness: 6,
                              color: ColorConstants.baseColor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
