import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class RecommendPlant extends StatelessWidget {
  const RecommendPlant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            name: 'Samantha',
            country: 'Russia',
            price: 466,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            name: 'Samantha',
            country: 'Russia',
            price: 466,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/image_3.png',
            name: 'Samantha',
            country: 'Russia',
            price: 466,
            press: () {},
          ),
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            name: 'Samantha',
            country: 'Russia',
            price: 466,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
            },
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            name: 'Samantha',
            country: 'Russia',
            price: 466,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  final String image;
  final String country;
  final String name;
  final int price;
  final Function press;
  const RecommendPlantCard({
    Key key,
    this.image,
    this.country,
    this.name,
    this.price,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      //It will cover 40% of our screen
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          InkWell(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(.23))
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: '$name\n',
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(.5)),
                      ),
                    ]),
                  ),
                  Spacer(),
                  Text('\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
