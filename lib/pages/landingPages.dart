import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {

    widget navItem() {
      return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Guide',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff1D1E3C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 66,
                              height: 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFE998D)),
                            ),
                          ],
                        ),
    }
    
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Guide',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff1D1E3C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 66,
                              height: 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFE998D)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Pricing',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff1D1E3C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 66,
                              height: 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Team',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff1D1E3C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 66,
                              height: 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Stories',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff1D1E3C),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              width: 66,
                              height: 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                    Image.asset(
                      'button_account.png',
                      width: 163,
                      height: 53,
                    )
                  ],
                ),

                //konten
                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  'ilustration.png',
                  height: 550,
                ),

                //FOOTER

                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icon_scroll.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Lanjut',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
