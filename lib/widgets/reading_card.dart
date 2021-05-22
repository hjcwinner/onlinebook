import 'package:flutter/material.dart';
import 'package:onlinebook/constants.dart';
import 'package:onlinebook/widgets/book_rating.dart';
import 'package:onlinebook/widgets/two_sied_rounded_button.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final Function pressDetails;
  final Function pressRead;

  const ReadingListCard({
    Key key,
    this.image,
    this.title,
    this.auth,
    this.rating,
    this.pressDetails,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24, bottom: 40),
        height: 245,
        width: 202,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 221,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 33,
                          color: kShadowColor)
                    ]),
              ),
            ),
            Image.asset(image, height: 160, width: 160),
            Positioned(
                top: 35,
                right: 10,
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_outline),
                      onPressed: () {},
                    ),
                    BookRating(score: rating)
                  ],
                )),
            Positioned(
                top: 160,
                child: Container(
                  height: 85,
                  width: 202,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 10),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(color: kBlackColor),
                                children: [
                              TextSpan(
                                  text: "$title",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: auth,
                                  style: TextStyle(color: kLightBlackColor))
                            ])),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: pressDetails,
                            child: Container(
                              width: 101,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              alignment: Alignment.center,
                              child: Text("Details"),
                            ),
                          ),
                          Expanded(
                              child: TwoSideRoundedButton(
                                  text: "Read", press: pressRead))
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}