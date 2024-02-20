// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:netflix_clo/utils/color_constant.dart';
import 'package:netflix_clo/utils/database.dart';
import 'package:netflix_clo/utils/image_constant.dart';
import 'package:netflix_clo/view/bottomnav_screen/bottomnav_screen.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        title: SizedBox(
            width: 138,
            height: 38,
            child:
                SafeArea(child: Image.asset("assets/image/logos_netflix.png"))),
        backgroundColor: ColorConstants.mainBlack,
        centerTitle: true,
        actions: [
          SizedBox(
              width: 24,
              height: 24,
              child: Image.asset("assets/image/bx_bxs-pencil.png")),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: DbData.UserNameImages.length + 1,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemBuilder: (context, index) => index <
                      DbData.UserNameImages.length
                  ? Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavScreen(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 92,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.amber,
                                    image: DecorationImage(
                                        image: AssetImage(DbData
                                            .UserNameImages[index]["image"]!),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          DbData.UserNameImages[index]["name"]!,
                          style: TextStyle(color: ColorConstants.mainWhite),
                        ),
                      ],
                    )
                  : InkWell(
                      onTap: () {
                        print("Add user");
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ImageConstant.addButtonImage),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Add profile",
                            style: TextStyle(color: ColorConstants.mainWhite),
                          )
                        ],
                      ),
                    )),
        ),
      ),
    );
  }
}
