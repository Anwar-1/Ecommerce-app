import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 55, 10, 5),
            child: Column(children: [
              Text("TOKOTO",style: TextStyle(fontSize: 25 ,color: Colors.orange),),
              SizedBox(
                height: 10,
              ),
              Text("welcome to tokoto ", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height:15 ,
              ),

              Image(image: AssetImage('assets/images/splash_1.png')),


              SizedBox(
                height: 80,
              ),


              MaterialButton(
                onPressed:() {},
                shape: StadiumBorder(),
                color: Colors.orange,
                textColor: Colors.white,
                child: Text("continue"),
                height: 40,
                minWidth: 500,

              ),


            ]), ),
        ),
      ),
    );
  }
}