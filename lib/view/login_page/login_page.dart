import 'package:festa_task/utils/constants/color_constants.dart';
import 'package:festa_task/utils/constants/text_styles.dart';
import 'package:festa_task/view/home_page/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.sizeOf(context).height;
    final mediaWidth = MediaQuery.sizeOf(context).width;
    final loginContainerheight = mediaWidth > 600
        ? mediaWidth / 2.8
        : kIsWeb && mediaWidth < 600
            ? mediaWidth / 2.8
            : mediaHeight / 2.8;

    return Scaffold(
      backgroundColor: ColorConstants.baseColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(loginContainerheight * .1),
              color: Colors.white,
            ),
            height: loginContainerheight,
            width: loginContainerheight,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: loginContainerheight * .08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: loginContainerheight * .07,
                  ),
                  Text(
                    "Log in",
                    style: myBoldText(
                        color: ColorConstants.baseColor,
                        size: loginContainerheight * .07),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail_outline_outlined,
                          color: ColorConstants.baseColor,
                        ),
                        hintText: "email",
                        contentPadding: EdgeInsets.all(0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility,
                              color: ColorConstants.baseColor,
                            )),
                        prefixIcon: Icon(
                          Icons.lock_open_rounded,
                          color: ColorConstants.baseColor,
                        ),
                        hintText: "password",
                        contentPadding: EdgeInsets.all(0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorConstants.baseColor,
                          borderRadius:
                              BorderRadius.circular(loginContainerheight * 2)),
                      height: loginContainerheight * .12,
                      width: loginContainerheight * .75,
                      child: Center(
                          child: Text(
                        "LOG IN",
                        style: myBoldText(
                            size: loginContainerheight * .05,
                            fontweight: FontWeight.w400),
                      )),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius:
                            BorderRadius.circular(loginContainerheight * 2)),
                    height: loginContainerheight * .12,
                    width: loginContainerheight * .75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          height: loginContainerheight * .12,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXLjmskPjve1NgDTdg3QDx_U3GdghK6aUEHA&usqp=CAU'),
                        ),
                        Text(
                          " Sign in with google",
                          style:
                              TextStyle(fontSize: loginContainerheight * .05),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
