import 'package:festa_task/controller/home_page_provider.dart';
import 'package:festa_task/view/home_page/widgets/appbar_widget.dart';
import 'package:festa_task/view/home_page/widgets/filter_drawer_widget.dart';
import 'package:festa_task/view/home_page/widgets/logout_drawer_widget.dart';
import 'package:festa_task/view/home_page/widgets/profiles_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      Provider.of<HomePageController>(context, listen: false).fetchData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final meidaHeight = MediaQuery.of(context).size.height;
    final meidaWidth = MediaQuery.of(context).size.width;
    final containerWidgetHeight =
        meidaWidth < meidaHeight ? meidaWidth * .7 : meidaHeight * .4;

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
