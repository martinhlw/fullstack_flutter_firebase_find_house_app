import "package:find_house_app/models/city.dart";
import "package:find_house_app/theme.dart";
import "package:flutter/material.dart";


class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
      height: 160,
      width: 120,
      color: Color(0xffF6F7F8),
      child: Column(
        children: [
          Image.asset(
            city.imageUrl,
            width: 130,
            height: 102,
            fit: BoxFit.cover,
           ),        
           SizedBox(height: 11,
           ),
           Text(
            city.name,
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
            ),
          ],
      )
      ),
    );
  }
}