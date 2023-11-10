import 'package:festa_task/controller/home_page_provider.dart';
import 'package:festa_task/utils/constants/color_constants.dart';
import 'package:festa_task/utils/constants/text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterDrawerWidget extends StatelessWidget {
  const FilterDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageController>(context);
    double mediawidth = kIsWeb
        ? MediaQuery.of(context).size.width / 4
        : MediaQuery.of(context).size.width;
    double mediaheight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(top: AppBar().preferredSize.height),
      child: Drawer(
        backgroundColor: ColorConstants.baseColor,
        width: MediaQuery.sizeOf(context).width > 600
            ? mediawidth
            : MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Container(
              height: 350,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Gender",
                      style: myBoldText(color: Colors.black),
                    ),
                  ),
                  RadioListTile(
                    value: "male",
                    groupValue: provider.setgender,
                    title: Text(
                      'Male',
                      style: myBoldText(color: Colors.black),
                    ),
                    onChanged: (value) {
                      provider.setFilter(value.toString());
                    },
                  ),
                  RadioListTile(
                    value: "female",
                    groupValue: provider.setgender,
                    title: Text(
                      'Female',
                      style: myBoldText(color: Colors.black),
                    ),
                    onChanged: (value) {
                      provider.setFilter(value.toString());
                    },
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstants.baseColor,
                          ),
                          height: 50,
                          width: 110,
                          child: Center(
                            child: InkWell(
                              child: Text(
                                "Filter",
                                style: myBoldText(fontweight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all()),
                        height: 50,
                        width: 110,
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "CLEAR",
                              style: myBoldText(
                                  fontweight: FontWeight.w500,
                                  color: ColorConstants.baseColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
