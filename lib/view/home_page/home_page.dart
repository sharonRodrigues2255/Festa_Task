import 'package:festa_task/utils/constants/color_constants.dart';
import 'package:festa_task/utils/constants/text_styles.dart';
import 'package:festa_task/view/home_page/widgets/appbar_widget.dart';
import 'package:festa_task/view/home_page/widgets/filter_drawer_widget.dart';
import 'package:festa_task/view/home_page/widgets/logout_drawer_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final meidaHeight = MediaQuery.of(context).size.height;
    final meidaWidth = MediaQuery.of(context).size.width;
    final containerWidgetHeight = meidaHeight * .4;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: AppBarWidget()),
      drawer: LogoutDrawerWidget(),
      endDrawer: FilterDrawerWidget(),
      body: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: kIsWeb ? 2 : 1, childAspectRatio: 1.38),
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
                      children: [
                        SizedBox(
                          height: 10,
                        ),
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
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Hi my name is",
                          style: TextStyle(color: ColorConstants.baseColor),
                        ),
                        Text("Sharon Rodrigues",
                            style: myBoldText(
                              color: ColorConstants.baseColor,
                            )),
                        SizedBox(
                          height: 6,
                        ),
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
                            ),
                            Icon(
                              Icons.email_outlined,
                              color: ColorConstants.baseColor,
                            ),
                            Icon(
                              Icons.calendar_today_outlined,
                              size: 21,
                              color: ColorConstants.baseColor,
                            ),
                            Icon(
                              Icons.map,
                              color: ColorConstants.baseColor,
                            ),
                            Icon(
                              Icons.phone,
                              color: ColorConstants.baseColor,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
