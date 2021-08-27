import 'package:flutter/material.dart';
import 'package:softui_1/widgets/constants.dart';

class Mycirclebox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width - 50;
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width - 50,
          width: MediaQuery.of(context).size.width - 50,
          decoration: BoxDecoration(
            color: kbackgroundColor,
            borderRadius: BorderRadius.circular(height),
            gradient: LinearGradient(
              colors: [kshadowColor, klightShadowColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: kshadowColor,
                offset: Offset(8, 6),
                blurRadius: 12,
              ),
              BoxShadow(
                color: klightShadowColor,
                offset: Offset(-8, -6),
                blurRadius: 12,
              ),
            ],
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10,
          child: Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/flutter_bird.png'),
            ),
          ),
        ),
      ],
    );
  }
}
