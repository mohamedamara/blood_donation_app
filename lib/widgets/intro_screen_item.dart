import 'package:flutter/material.dart';
import '../models/intro_screen_model.dart';

class IntroScreenItem extends StatelessWidget {
  final IntroScreenModel introScreenModel;

  IntroScreenItem({Key key, this.introScreenModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Positioned(
                      top: 100,
                      child: Image.asset(introScreenModel.imageURL),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ClipPath(
                child: Container(
                  width: double.infinity,
                  color: Color(0xFFFF2F53),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(),
                        child: Text(
                          introScreenModel.title,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Text(
                          introScreenModel.text,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                clipper: IntroScreenClipper(introScreenModel.clipperDYPoints),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IntroScreenClipper extends CustomClipper<Path> {
  final ClipperDYPoints clipperDYPoints;

  IntroScreenClipper(this.clipperDYPoints);
  @override
  Path getClip(Size size) {
    final Offset firstControlPoint =
        Offset(size.width * .25, clipperDYPoints.firstControlPointDY);
    final Offset firstEndPoint =
        Offset(size.width * .5, clipperDYPoints.firstEndPointDY);
    final Offset secondControlPoint =
        Offset(size.width * .75, clipperDYPoints.secondControlPointDY);
    final Offset secondEndPoint =
        Offset(size.width, clipperDYPoints.secondEndPointDY);

    final path = Path()
      ..lineTo(0.0, clipperDYPoints.startPointDY)
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy)
      ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
