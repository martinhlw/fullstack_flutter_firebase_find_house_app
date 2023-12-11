import 'package:find_house_app/models/city.dart';
import 'package:find_house_app/theme.dart';
import 'package:find_house_app/widgets/city_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
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
                        isPopular: false,
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
                        isPopular: false,
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
                        isPopular: false,
                        imageUrl: 'assets/images/city3.png',  
                        ),
                      ),
                    SizedBox(
                      width: 30,
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
