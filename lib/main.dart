import 'package:flutter/material.dart';
import 'package:onlinebook/constants.dart';
import 'package:onlinebook/screens/home_screen.dart';
import 'package:onlinebook/widgets/rounded_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Book App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kBlackColor)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Bitmap.png"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.display3,
                    children: [
                  TextSpan(text: "Book app "),
                  TextSpan(
                      text: "go.",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
            SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                },
                text: "시작하기",
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
