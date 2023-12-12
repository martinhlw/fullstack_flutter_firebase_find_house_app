import 'package:flutter/material.dart';


class SpaceCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 130,
          height: 110,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/space1.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}