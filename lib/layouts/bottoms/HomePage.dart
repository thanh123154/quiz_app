import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// import 'package:quiz_app/utils/default.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  // PageController pageController = PageController(
  //   initialPage: 0,
  //   viewportFraction: 0.8,
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                card(color: Colors.white),
                card(color: Colors.white),
                card(color: Colors.white),
                card(color: Colors.white),
                card(color: Colors.white),
                card(color: Colors.white),
                card(color: Colors.white),
              ],
            ),
          ),
          article(),
        ],
      ),
    );
  }

  Widget article() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: articleName(),
          margin: EdgeInsets.only(top: 20, left: 20, bottom: 20),
        ),
        SizedBox(height: 10),
        articleCard(),
        SizedBox(height: 10),
        articleCard(),
        SizedBox(height: 10),
        articleCard(),
        SizedBox(height: 10),
      ],
    );
  }

  Widget articleCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: -20,
              blurRadius: 4,
              offset: Offset(
                2,
                2,
              ))
        ],
      ),
      child: Card(
          margin: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: articleContent()), //noi dung recent post
    );
  }

  Widget articleContent() {
    return Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.all(10),
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          title: Text.rich(buildTextSpanBox()),
          subtitle: Text.rich(buildTextSubtitle()),
          trailing: Column(
            children: [
              Container(
                width: 50,
                margin: EdgeInsets.only(top: 5, bottom: 10),
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                child: Text(
                  "Math",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemSize: 20,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget articleName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // margin: EdgeInsets.only(top: 20, left: 20, bottom: 20),
          child: Text(
            "Recent Quiz",
            style: TextStyle(
              fontSize: 28,
              color: Color(0xffeb5757),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget card({Color color}) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, bottom: 20),
      width: 100,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "Ung dung di dong",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              // spreadRadius: 3,
              blurRadius: 4,
              // offset: Offset(0, 2),
              offset: Offset(
                2,
                2,
              ))
        ],
        color: color,
      ),
    );
  }
}

TextSpan buildTextSpanBox() {
  final double _fontsize = 20;
  return TextSpan(
    style: TextStyle(
      color: Color(0xffEB5757),
      fontWeight: FontWeight.w700,
      fontSize: 20,
    ),
    children: [
      TextSpan(text: "Ung dung di dong"),
    ],
  );
}

TextSpan buildTextSubtitle() {
  final double _fontsize = 20;
  return TextSpan(
    style: TextStyle(
      fontSize: 12,
      color: Color(0xffC1C1C1),
      fontWeight: FontWeight.w400,
    ),
    children: [
      TextSpan(
        text: "by unknown",
      ),
      TextSpan(
        text: "     " + "24/1/2000",
      ),
      TextSpan(
        text: "\nQuiz nay rat hay cac ban hay...",
        style: TextStyle(
          fontSize: 14,
          color: Color(0xffA1A1A1),
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );
}

class MyPage1widget {}
