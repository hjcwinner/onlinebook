import 'package:flutter/material.dart';
import 'package:onlinebook/constants.dart';
import 'package:onlinebook/widgets/book_rating.dart';
import 'package:onlinebook/widgets/rounded_button.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: size.height * .45,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      SizedBox(height: size.height * .1),
                      BookInfo(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * .4 - 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Chapter_Card(
                        name: "Money",
                        tag: "Life is about change",
                        chapterNumber: 1,
                        press: () {}),
                    Chapter_Card(
                        name: "Power",
                        tag: "Everything loves power",
                        chapterNumber: 2,
                        press: () {}),
                    Chapter_Card(
                        name: "Influence",
                        tag: "Influence easily like naver before",
                        chapterNumber: 3,
                        press: () {}),
                    Chapter_Card(
                        name: "Win",
                        tag: "Winning is what matters",
                        chapterNumber: 4,
                        press: () {}),
                    SizedBox(height: 10)
                  ],
                ),
              )
            ],
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
                      TextSpan(text: "You might also "),
                      TextSpan(
                          text: "Like....",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      height: 180,
                      width: double.infinity,
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                            padding:
                                EdgeInsets.only(left: 24, top: 24, right: 150),
                            height: 160,
                            decoration: BoxDecoration(
                                color: Color(0xFFFFF8F9),
                                borderRadius: BorderRadius.circular(29)),
                            child: Column(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        style:
                                            TextStyle(color: kLightBlackColor),
                                        children: [
                                      TextSpan(
                                          text:
                                              "How To Win \nFriends & Influence\n",
                                          style: TextStyle(fontSize: 20)),
                                      TextSpan(
                                          text: "Gary Venchuk",
                                          style: TextStyle(
                                              color: kLightBlackColor))
                                    ])),
                                Row(
                                  children: [
                                    BookRating(score: 4.9),
                                    SizedBox(width: 20),
                                    Expanded(
                                        child: RoundedButton(
                                      text: "Read",
                                      verticalPadding: 10,
                                    ))
                                  ],
                                )
                              ],
                            ))),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/images/book-3.png",
                          width: 150,
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40)
        ],
      ),
    ));
  }
}

class Chapter_Card extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;

  const Chapter_Card({
    Key key,
    this.name,
    this.tag,
    this.chapterNumber,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 25, left: 25),
      width: size.width - 48,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 33,
                color: Color(0xFFD3D3D3).withOpacity(.84))
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Chapter $chapterNumber:  $name \n",
                style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold)),
            TextSpan(text: tag, style: TextStyle(color: kLightBlackColor))
          ])),
          IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: press)
        ],
      ),
    );
  }
}
// SizedBox(height: 60),
//                       Container(
//                         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(40)),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               children: [
//                                 Text("Chapter 1: Money", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
//                                 Text("life is about change", style: TextStyle(fontSize: 14, color: Colors.grey.withOpacity(0.8)),),
//                               ],
//                             ),
//                             IconButton(icon: Icon(Icons.arrow_right, size: 40), onPressed: (){})
//                           ],
//                         ),
//                       )

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
          children: [
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.display1,
                    children: [
                  TextSpan(text: "Crushing &\n"),
                  TextSpan(
                      text: "Influence",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ])),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "asdfasdfasdfasdfasdfasd asdfasdfasdfasdfasdfasd asdfasdfasdfasdfasdfasd asdfasdfasdfasdfasdfasd asdfasdfasdfasdfasdfasd",
                        maxLines: 5,
                        style: TextStyle(fontSize: 10, color: kLightBlackColor),
                      ),
                      SizedBox(height: 5),
                      RoundedButton(
                        text: "Read",
                        verticalPadding: 10,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                        icon: Icon(Icons.favorite_outline), onPressed: () {}),
                    BookRating(
                      score: 4.8,
                    )
                  ],
                )
              ],
            )
          ],
        )),
        Image.asset("assets/images/book-1.png", height: 200),
      ],
    );
  }
}
