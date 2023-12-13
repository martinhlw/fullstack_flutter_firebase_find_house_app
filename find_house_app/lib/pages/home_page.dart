import 'package:find_house_app/models/city.dart';
import 'package:find_house_app/models/space.dart';
import 'package:find_house_app/theme.dart';
import 'package:find_house_app/widgets/city_card.dart';
import 'package:find_house_app/widgets/space_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
              // NOTE: TITLE/HEADER
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Mencari kosan yang slebew',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              // NOTE : POPULAR CITY
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cities',
                  style: regularTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/city1.png',
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CityCard(
                      City(
                        id: 2,
                        name: 'Bandung',
                        isPopular: true,
                        imageUrl: 'assets/images/city2.png',
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CityCard(
                      City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/images/city3.png',
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              // NOTE : RECOMMENDED SPACE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recommended Space',
                  style: regularTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                child: Column(
                  children: [
                    SpaceCard(
                      Space(
                        id: 1,
                        name: 'Rumah Velman',
                        imageUrl: 'assets/images/space1.png',
                        price: 2000,
                        city: 'Bandung',
                        country: 'Indonesia',
                        rating: 4,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id: 2,
                        name: 'Rumah Werky',
                        imageUrl: 'assets/images/space2.png',
                        price: 2000,
                        city: 'Bandung',
                        country: 'Indonesia',
                        rating: 4,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id: 3,
                        name: 'Rumah Damar',
                        imageUrl:'assets/images/space3.png',
                        price: 2000,
                        city: 'Bandung',
                        country: 'Indonesia',
                        rating: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
