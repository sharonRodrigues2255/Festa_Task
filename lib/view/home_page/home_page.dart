import 'package:festa_task/view/home_page/widgets/appbar_widget.dart';
import 'package:festa_task/view/home_page/widgets/filter_drawer_widget.dart';
import 'package:festa_task/view/home_page/widgets/logout_drawer_widget.dart';
import 'package:festa_task/view/home_page/widgets/profiles_grid_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final meidaHeight = MediaQuery.of(context).size.height;
    final meidaWidth = MediaQuery.of(context).size.width;
    final containerWidgetHeight =
        meidaWidth < 600 ? meidaWidth * .7 : meidaHeight * .4;

    return Scaffold(
        appBar: MediaQuery.sizeOf(context).width > 600
            ? null
            : PreferredSize(
                preferredSize: Size.fromHeight(AppBar().preferredSize.height),
                child: AppBarWidget()),
        drawer: LogoutDrawerWidget(),
        endDrawer: FilterDrawerWidget(),
        body: LayoutBuilder(builder: (context, contraints) {
          double screenwidth = contraints.maxWidth;
          if (screenwidth > 600) {
            return Row(
              children: [
                LogoutDrawerWidget(),
                Container(
                  height: contraints.maxHeight * 2,
                ),
                Expanded(
                    child: ProfilesGridview(
                        containerWidgetHeight: containerWidgetHeight))
              ],
            );
          } else {
            return ProfilesGridview(
                containerWidgetHeight: containerWidgetHeight);
          }
        }));
  }
}
