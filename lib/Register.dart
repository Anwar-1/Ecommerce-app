import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'SuccessScreen.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:task1/SuccessScreen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
 // final style = TextStyle(fontSize: 40, fontFamily: FontWeight.bold);
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:
              Container(
                padding: EdgeInsets.fromLTRB(10, 55, 10, 5),
                margin: EdgeInsets.all(18),
                child: Column(children: [

                  Container(
                    width: 700,
                    height: 40,

                    child: AppBar(
                      automaticallyImplyLeading: false,
                      backgroundColor: Colors.grey,

                      leading: BackButton(
                        //color: Colors.white,

                      ),
                    ),
                  ),


                  SizedBox(
                    height: 30,
                  ),


                 // Container(

                 //   alignment: AlignmentDirectional.centerStart,
                   // child: Icon(Icons.arrow_back_outlined,   ),
                    // onPressed: () {
                    //  Navigator.of(context).pop();
                    // },

              //    ),


                  Text("Register Account", style: TextStyle(
                   // fontFamily: 'Muli',
                      fontWeight: FontWeight.bold
                  ,fontSize: 25),
                    textAlign: TextAlign.center,

                  ),



                  Text(
                    "complete your details or continue \n"
                        " with social media",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 60,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      // padding around hint
                      hintText: 'enter your Email',
                      labelText: 'Email',
                      suffixIcon: Icon(Icons.mail_outline_rounded),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),

                  SizedBox(
                    height:20,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      // padding around hint
                      hintText: 'password',
                      labelText: 'enter your password ',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      // padding around hint
                      hintText: 'confirm password',
                      labelText: 'Re-enter your password  ',
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      suffixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  MaterialButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SuccessScreen()),
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

                  SizedBox(
                    height: 30,
                  ),

                  Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed:() {},
                        shape: CircleBorder(),
                        color: Colors.white,
                        // textColor: Colors.white,
                        child: SvgPicture.asset('assets/icons/google-icon.svg'),
                        //Icon(FontAwesomeIcons.twitter,
                        //  color: Colors.blue,
                        //  size: 50,
                        ),
                        //SvgPicture.asset("assets/icons/facebook-2.svg"),
                        // SvgPicture.asset(
                         // 'assets/icons/google-icon.svg',
                       // ),
                      //  child: //SvgPicture.asset("assets/icons/facebook-2.svg"),
                      //  Icon(Icons.facebook),
                      //  height: 40,
                      // minWidth: 40,



                      MaterialButton(
                        onPressed:() {},
                        shape: CircleBorder(),
                        color: Colors.white,
                        textColor: Colors.white,
                        child:SvgPicture.asset('assets/icons/facebook-2.svg'),

                       // Icon(FontAwesomeIcons.google,
                         // color: Colors.yellow,
                         // size: 50,
                       // ),


                       // height: 40,
                        //minWidth: 40,

                      ),

                      MaterialButton(
                        onPressed:() {},
                        shape: CircleBorder(),
                        color: Colors.white,
                        textColor: Colors.white,
                        child:SvgPicture.asset('assets/icons/twitter.svg'),


                       // Icon(FontAwesomeIcons.facebook,
                        //  color: Colors.blue,
                        //  size: 50,
                       // ),
                       // height: 40,
                       // minWidth: ,

                      ),
                    ],
                  ),




                  SizedBox(
                    height: 30,
                  ),

                  Text(
                    "by continuing your confirm that you agree ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),


                ]),
      ),

              ),

      ) ;


  }
}




