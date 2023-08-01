import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:task1agin/welcome.dart';
//import 'package:task1/SuccessScreen.dart';
//import 'package:task1/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
          child: Scaffold(
            body: Container(
              alignment: AlignmentDirectional.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 26,
                  ),
                  Text(
                    'TOKOTO',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Welcome to TOKOTO, Let\'s shop!',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),


                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 350,
                    width: 350,
                    child: AnotherCarousel(
                      images: const [
                        AssetImage('assets/images/splash_1.png',
                        ),
                        AssetImage('assets/images/splash_2.png',),
                        AssetImage('assets/images/splash_3.png',),
                      ],
                      dotSize: 6,
                      indicatorBgPadding: 5.0,
                      // borderRadius:BorderRadius.all(Radius.circular(30)),
                      boxFit: BoxFit.cover,
                    ),
                  ),





                  SizedBox(
                    height: 90,
                  ),

                  MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const welcome()),
                      );
                    },
                    height: 50,
                    minWidth: 400,
                    child: Text('Continue',style: TextStyle(
                        fontSize: 18
                    ),),
                    textColor: Colors.white,
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
          ));
  }
}