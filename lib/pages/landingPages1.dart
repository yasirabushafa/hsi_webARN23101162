import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/themes.dart';

class LandingPage1 extends StatefulWidget {
  @override
  // State<LandingPage1> createState() => _LandingPage1State();
  _LandingPage1State createState() => _LandingPage1State();
}

class _LandingPage1State extends State<LandingPage1> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
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
                        navItem(
                          title: "Beranda",
                          index: 0,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: "Menu 1",
                          index: 1,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: "Menu 2",
                          index: 3,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: "Menu 3",
                          index: 4,
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
                    ),
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
