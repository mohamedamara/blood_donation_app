class IntroScreenModel {
  final imageURL;
  final title;
  final text;
  final clipperDYPoints;

  IntroScreenModel({
    this.imageURL,
    this.title,
    this.text,
    this.clipperDYPoints,
  });
}

class ClipperDYPoints {
  final double startPointDY;
  final double firstControlPointDY;
  final double firstEndPointDY;
  final double secondControlPointDY;
  final double secondEndPointDY;

  ClipperDYPoints({
    this.startPointDY,
    this.firstControlPointDY,
    this.firstEndPointDY,
    this.secondControlPointDY,
    this.secondEndPointDY,
  });
}

List<IntroScreenModel> introScreenList = [
  IntroScreenModel(
    imageURL: "assets/images/intro_image_1.png",
    title: "Donate  Blood",
    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
        "sed do eiusmod tempor",
    clipperDYPoints: ClipperDYPoints(
      startPointDY: 100,
      firstControlPointDY: 50,
      firstEndPointDY: 50,
      secondControlPointDY: 50,
      secondEndPointDY: 62,
    ),
  ),
  IntroScreenModel(
    imageURL: "assets/images/intro_image_2.png",
    title: "Search Blood Donor",
    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "
        "eiusmod tempor",
    clipperDYPoints: ClipperDYPoints(
      startPointDY: 62,
      firstControlPointDY: 74,
      firstEndPointDY: 77,
      secondControlPointDY: 82,
      secondEndPointDY: 77,
    ),
  ),
  IntroScreenModel(
    imageURL: "assets/images/intro_image_3.png",
    title: "Explore Updates around you",
    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "
        "eiusmod tempor",
    clipperDYPoints: ClipperDYPoints(
      startPointDY: 77,
      firstControlPointDY: 70,
      firstEndPointDY: 55,
      secondControlPointDY: 40,
      secondEndPointDY: 0,
    ),
  ),
];
