import 'package:festa_task/utils/constants/color_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Icon(
          Icons.grid_view_sharp,
          color: Colors.white,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openEndDrawer();
          },
          child: Text(
            "FILTER",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
      backgroundColor: ColorConstants.baseColor,
    );
  }
}
