import 'package:blood_donation_app/widgets/intro_screen_dots.dart';
import 'package:flutter/material.dart';
import '../models/intro_screen_model.dart';
import '../widgets/intro_screen_item.dart';

class IntroScreenCarousel extends StatefulWidget {
  @override
  _IntroScreenCarouselState createState() => _IntroScreenCarouselState();
}

class _IntroScreenCarouselState extends State<IntroScreenCarousel> {
  int _currentPage = 0;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: introScreenList.length,
            onPageChanged: _onPageChanged,
            itemBuilder: (context, i) => IntroScreenItem(
              introScreenModel: introScreenList[i],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (int i = 0; i < introScreenList.length; i++)
                  if (i == _currentPage)
                    IntroScreenDots(true)
                  else
                    IntroScreenDots(false)
              ],
            ),
          )
        ],
      ),
    );
  }
}
