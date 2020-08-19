import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plant.dart';
import 'package:plant_app/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/screens/home/components/recommend_plant.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //It will provide us total width and height of screen
    Size size = MediaQuery.of(context).size;
    //It enables scrolling on small screens
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: 'Recommended',
            press: () {},
          ),
          RecommendPlant(),
          TitleWithMoreButton(
            title: 'Featured Plants',
            press: () {},
          ),
          FeaturedPlant(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
