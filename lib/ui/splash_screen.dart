import 'package:bmo_calculator_app/ui/input_page.dart';
import 'package:bmo_calculator_app/ui/responsive_layout.dart';
import 'package:bmo_calculator_app/utils/constants.dart';
import 'package:bmo_calculator_app/utils/max_widthContainer.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 30),
            width: width / 1.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(),
                Hero(
                  tag: 'BMI',
                  child: Image.asset(
                    'assets/person.png',
                    height: height / 3,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'BMI KALKULATOR',
                      style: kTextTitleSplash,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Kalkulator ini untuk memeriksa Indeks Massa Tubuh dan mengecek berat badan Anda Ideal atau tidak.',
                      style: kTextBodySplash,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.all(0.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      PageRouteBuilder(
                        transitionDuration: Duration(seconds: 1),
                        pageBuilder: (_, __, ___) => MaxWidthContainer(
                          child: ResponsiveLayout(
                            mobileBody: InputPage(),
                            tableBody: InputPage(),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: width / 2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.purple,
                            Colors.black,
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.purple,
                            blurRadius: 16.0,
                            spreadRadius: 7.0,
                            offset: Offset(0.0, 0.0),
                          )
                        ]),
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Mulai',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 10,
                ),
                Text(
                  'Develop by SikamiCeriaDev with ❤️',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
