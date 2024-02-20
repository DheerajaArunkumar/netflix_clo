import 'package:flutter/material.dart';
import 'package:netflix_clo/utils/color_constant.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Smart Downloads',
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Introdusing Downloads For You',
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 10,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: CircleAvatar(
                backgroundColor: ColorConstants.mainGrey,
                radius: 100,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                color: Colors.blue,
                height: 40,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'SETUP',
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                  color: ColorConstants.mainGrey,
                  height: 40,
                  width: 250,
                  child: const Center(
                    child: Text(
                      'Find  Something To Download',
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
