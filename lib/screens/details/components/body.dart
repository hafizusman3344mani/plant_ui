import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/image_and_icon_card.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconCard(size: size),
          TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: '466',
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(onPressed: () {  },
                child: Text('Description'),),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding*2)
        ],
      ),
    );
  }
}
