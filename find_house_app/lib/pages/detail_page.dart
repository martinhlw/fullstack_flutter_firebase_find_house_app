import "package:find_house_app/theme.dart";
import "package:flutter/material.dart";

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 400,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/images/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: whiteColor,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rumah Velman',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: '2000k',
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
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/star_icon.png',
                                  width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                  'assets/images/star_icon.png',
                                  width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                  'assets/images/star_icon.png',
                                  width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                  'assets/images/star_icon.png',
                                  width: 20,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset(
                                  'assets/images/star_icon.png',
                                  width: 20,
                                  color: Color(0xff989BA1)
                                  ),            
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
