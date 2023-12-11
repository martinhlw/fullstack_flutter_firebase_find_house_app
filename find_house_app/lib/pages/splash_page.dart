import 'package:find_house_app/pages/home_page.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // Background Image
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/splash_bg.png'),
            ),
            // Content
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Text(
                    'Find Cozy House\nto Stay and Happy',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stop membuang banyak waktu\npada tempat yang tidak berguna',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                          builder: (context) => HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: purpleColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Text(
                        'Explore Now',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
