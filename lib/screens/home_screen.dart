import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinebook/constants.dart';
import 'package:onlinebook/widgets/book_rating.dart';
import 'package:onlinebook/widgets/details.dart';
import 'package:onlinebook/widgets/reading_card.dart';
import 'package:onlinebook/widgets/two_sied_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
                      child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth,
                      image: AssetImage("assets/images/main_page_bg.png"))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * .07),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                          TextSpan(text: "what are you\nreading "),
                          TextSpan(
                              text: "today?",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ])),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: "assets/images/book-1.png",
                          title: "Crushing & Influence\n",
                          auth: "Gary Venchuk",
                          rating: 4.9,
                          pressRead: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Details();
                  }));}
                        ),
                        ReadingListCard(
                          image: "assets/images/book-2.png",
                          title: "Top Ten Business Hacks\n",
                          auth: "Herman Joel",
                          rating: 4.8,
                          pressRead: (){Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Details();
                  }));}
                        ),
                        SizedBox(width: 30)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.display1,
                                children: [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                  text: "day",
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ])),
                            SizedBox(height: 5),
                        bestOfTheDayCard(size, context),
                        SizedBox(height: 10),
                        RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.display1,
                                children: [
                                  TextSpan(text: "Continue "),
                                  TextSpan(text: "reading",style: TextStyle(fontWeight: FontWeight.bold))
                                ])),
                                Container(
                                  height: 20,
                                  width: double.infinity
                                )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        height: 205,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(
                      left: 24, top: 24, right: size.width * .35),
                  height: 185,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFEAEAEA),
                      borderRadius: BorderRadius.circular(29)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New York Time Best For 11TH March 2021",
                        style: TextStyle(fontSize: 9, color: kLightBlackColor),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "How To Win \nFriends & Influence",
                        style: Theme.of(context).textTheme.title,
                      ),
                      Text(
                        "Gary Venchuk",
                        style: TextStyle(color: kLightBlackColor),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          BookRating(score: 4.9),
                          SizedBox(width: 10),
                          Expanded(
                              child: Text(
                            "When the earth was flat and everyone wanted to win the game",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12, color: kLightBlackColor),
                          ))
                        ],
                      )
                    ],
                  ),
                )),
            Positioned(
              right: 0,
              top: 0,
              child: Image.asset("assets/images/book-3.png"),
              width: size.width * .37,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 40,
                width: size.width * .3,
                child: TwoSideRoundedButton(
                    text: "Read", radious: 24, press: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Details();
                  }));}),
              ),
            )
          ],
        ));
  }
}
