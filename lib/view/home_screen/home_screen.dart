import 'package:flutter/material.dart';
import 'package:netflix_clo/utils/color_constant.dart';
import 'package:netflix_clo/utils/database.dart';
import 'package:netflix_clo/utils/image_constant.dart';
import 'package:netflix_clo/view/home_screen/widget/coustom_moviecards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 430,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.homePageImage),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImageConstant.netflixSecondary),
                    Text(
                      "Tv Shows",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 17),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 17),
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImageConstant.top10),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "#2 in Nigeria today",
                        style: TextStyle(
                            color: ColorConstants.mainWhite, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: ColorConstants.mainWhite,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  )
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: ColorConstants.mainGrey,
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow_sharp,
                      size: 21,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Play",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Icon(
                    Icons.info_outline_rounded,
                    color: ColorConstants.mainWhite,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Info",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          CustomMovieCards(
            height: 100,
            width: 100,
            title: "Preview",
            isCircular: true,
            imagesList: DbData.movieImageUrlsCircle,
          ),
          CustomMovieCards(
            title: "Continue Watching for ",
            imagesList: DbData.movieImageUrls1,
            isOptionsVisible: true,
          ),
          CustomMovieCards(
            height: 251,
            width: 154,
            title: "Continue Watching for ",
            imagesList: DbData.movieImageUrls2,
          ),
          CustomMovieCards(
            title: "Continue Watching for ",
            imagesList: DbData.movieImageUrlsCircle,
          ),
        ],
      ),
    );
  }
}
