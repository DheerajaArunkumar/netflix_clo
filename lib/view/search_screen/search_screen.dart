import 'package:flutter/material.dart';
import 'package:netflix_clo/utils/color_constant.dart';
import 'package:netflix_clo/utils/database.dart';
import 'package:netflix_clo/view/search_screen/widget/coustomsearchscreencard.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            color: ColorConstants.mainGrey,
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  color: ColorConstants.mainWhite,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search for a show, movie, genre, e.t.c.",
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.mic,
                  color: ColorConstants.mainWhite,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              "Top Searches",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: DbData.searchScreenDatas.length,
              itemBuilder: (context, index) => CustomSearchScreenCard(
                imageUrl:
                    DbData.searchScreenDatas[index]["imageUrl"].toString(),
                title: DbData.searchScreenDatas[index]["movieName"].toString(),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
