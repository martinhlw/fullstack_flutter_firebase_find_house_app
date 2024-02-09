import 'package:find_house_app/models/space.dart';
import 'package:find_house_app/pages/detail_page.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  // Remove the imageUrl parameter from the constructor
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
          );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 106,
              child: Stack(
                children: [
                  Image.asset(
                    space.imageUrl,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 28,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/star_icon.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            '${space.rating}/5',
                            style: whiteTextStyle.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                    text: '${space.price}k',
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: '/month',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: greyTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
