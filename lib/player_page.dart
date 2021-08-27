import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:softui_1/widgets/constants.dart';
import 'package:softui_1/widgets/mycircleBox.dart';

import 'package:softui_1/widgets/my_softbutton.dart';

class PlayerPage extends StatefulWidget {
  @override
  _PlayerPageState createState() => _PlayerPageState();
}

bool playtoggle = true;

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: MySoftButton(
                      size: kmybuttonsize,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: kmysiconsize,
                        color: ktextColor,
                      ),
                    ),
                  ),
                  Text(
                    'Favourite Album',
                    style: TextStyle(
                        color: ktextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {},
                    child: MySoftButton(
                      size: kmybuttonsize,
                      child: Icon(
                        Icons.more_horiz,
                        size: kmysiconsize + 10,
                        color: ktextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Mycirclebox(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Column(
                children: [
                  Text(
                    'Zara sa (By K.K.)',
                    style: TextStyle(
                      color: ktextColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Future',
                    style: TextStyle(
                      color: ktextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Stack(
              children: [
                Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width - 20,
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  decoration: BoxDecoration(
                    color: kbackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: kshadowColor,
                        offset: Offset(1, 4),
                        blurRadius: 10,
                      ),
                      BoxShadow(
                        color: klightShadowColor,
                        offset: Offset(-1, -4),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 4,
                  child: Container(
                    height: 12,
                    width: MediaQuery.of(context).size.width - 150,
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [kseekBarLightColor, kseekBarDarkColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1:30',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: ktextColor,
                    ),
                  ),
                  Text(
                    '3:52',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: ktextColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MySoftButton(
                  size: kmybuttonsize + 10,
                  child: Icon(
                    Icons.skip_previous_rounded,
                    size: kmysiconsize + 5,
                  ),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (playtoggle == true) {
                        playtoggle = false;
                      } else {
                        playtoggle = true;
                      }
                      print(playtoggle);
                    });
                  },
                  child: MySoftButton(
                    size: kmybuttonsize + 40,
                    child: Icon(
                      Icons.play_circle,
                      color: (playtoggle == true)
                          ? kseekBarDarkColor
                          : Colors.black,
                      size: kmysiconsize + 20,
                    ),
                  ),
                ),
                SizedBox(width: 40),
                MySoftButton(
                  size: kmybuttonsize + 10,
                  child: Icon(
                    Icons.skip_next_rounded,
                    size: kmysiconsize + 5,
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
