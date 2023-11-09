import 'package:festa_task/utils/constants/color_constants.dart';
import 'package:festa_task/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class FilterDrawerWidget extends StatelessWidget {
  const FilterDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(top: AppBar().preferredSize.height),
      child: Drawer(
        backgroundColor: ColorConstants.baseColor,
        width: MediaQuery.sizeOf(context).width,
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
                    value: 1,
                    groupValue: 'selectedValue',
                    title: Text(
                      'Male',
                      style: myBoldText(color: Colors.black),
                    ),
                    onChanged: (value) {},
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: '',
                    title: Text(
                      'Female',
                      style: myBoldText(color: Colors.black),
                    ),
                    onChanged: (value) {},
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstants.baseColor,
                        ),
                        height: 50,
                        width: 110,
                        child: Center(
                          child: Text(
                            "Filter",
                            style: myBoldText(fontweight: FontWeight.w500),
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
                          child: Text(
                            "CLEAR",
                            style: myBoldText(
                                fontweight: FontWeight.w500,
                                color: ColorConstants.baseColor),
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
