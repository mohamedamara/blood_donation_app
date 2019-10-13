import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: ClipPath(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login_image.png"),
                        fit: BoxFit.contain),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFFF217A),
                        const Color(0xFFFF4D4D)
                      ],
                    ),
                  ),
                ),
                clipper: LoginScreenClipper(),
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 12),
                  Text(
                    "LOGIN & REGISTER",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    height: 40,
                    width: 230,
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50),
                          right: Radius.circular(50),
                        ),
                      ),
                      color: const Color(0xFF2D509B),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Icon(
                                FontAwesomeIcons.facebookF,
                                size: 12,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Facebook",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 40,
                    width: 230,
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: const Color(0xFFA2A2A2),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50),
                          right: Radius.circular(50),
                        ),
                      ),
                      color: Colors.white,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/google_icon.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Google",
                              style: TextStyle(
                                color: const Color(0xFF0A0819),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 40,
                    width: 230,
                    child: RaisedButton(
                      onPressed: () {},
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: const Color(0xFFA2A2A2),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50),
                          right: Radius.circular(50),
                        ),
                      ),
                      color: Colors.white,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: Icon(
                                Icons.apps,
                                size: 18,
                                color: const Color(0xFF0A0819),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Mobile Number",
                              style: TextStyle(
                                color: const Color(0xFF0A0819),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreenClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Offset firstControlPoint = Offset(size.width * .25, size.height - 31);
    final Offset firstEndPoint = Offset(size.width * .5, size.height - 31);
    final Offset secondControlPoint =
        Offset(size.width * .75, size.height - 31);
    final Offset secondEndPoint = Offset(size.width, size.height);

    final path = Path()
      ..lineTo(0.0, size.height)
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy)
      ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
