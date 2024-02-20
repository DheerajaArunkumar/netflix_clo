import 'package:flutter/material.dart';
import 'package:netflix_clo/utils/color_constant.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Container(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    height: 74,
                    width: 74,
                    color: Colors.amber,
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 5,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    color: ColorConstants.mainWhite,
                  ),
                  Text(
                    "Manage Profiles",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: ColorConstants.mainGrey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.comment,
                                color: ColorConstants.mainWhite,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Tell friens about Netflix",
                                  style: TextStyle(
                                      color: ColorConstants.mainWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19))
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: ColorConstants.mainWhite, fontSize: 12),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Terms & Conditions",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    ColorConstants.mainWhite.withOpacity(.5),
                                color: ColorConstants.mainWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  width: double.infinity,
                                  color: ColorConstants.mainBlack,
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Center(
                                      child: Text("Copy Link",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15))),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: ColorConstants.mainWhite,
                                  ),
                                  width: double.infinity,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 60,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  child: Image(
                                      image:
                                          AssetImage("assets/images/wht.png")),
                                )),
                                VerticalDivider(),
                                Expanded(
                                  child: Container(
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/fac.png")),
                                  ),
                                ),
                                VerticalDivider(),
                                Expanded(
                                    child: Container(
                                  child: Image(
                                      image: AssetImage(
                                          "assets/images/gmail.png")),
                                )),
                                VerticalDivider(),
                                Expanded(
                                    child: Container(
                                        child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.more_horiz,
                                      color: ColorConstants.mainWhite,
                                    ),
                                    Text(
                                      "More",
                                      style: TextStyle(
                                          color: ColorConstants.mainWhite),
                                    ),
                                  ],
                                )))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image(
                          image: AssetImage(
                              "assets/images/noto-v1_check-mark-button.png")),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "My List",
                        style: TextStyle(color: ColorConstants.mainWhite),
                      )
                    ],
                  ),
                  Divider(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "App Settings",
                        style: TextStyle(color: ColorConstants.mainWhite),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Account",
                        style: TextStyle(color: ColorConstants.mainWhite),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Help",
                        style: TextStyle(color: ColorConstants.mainWhite),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sign Out",
                        style: TextStyle(color: ColorConstants.mainWhite),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
