
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'SuccessScreen.dart';
import 'complete.dart';
import 'forget.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});


  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  bool valuefirst = false;
  bool valuesecond = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose () {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
          Container(
            alignment: AlignmentDirectional.center,
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

            //  Container(

                //alignment: AlignmentDirectional.centerStart,
                 //child: Icon(Icons.arrow_back_outlined,   ),
               // onPressed: () {
                //  Navigator.of(context).pop();
               // },

            //  ),



              Text("welcome back  ",style: TextStyle(fontSize: 25 ,color: Colors.black
                  , fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 10,
              ),

              Text("sign in with your email and password  or  \n "
                  "continue with the social media  "
                  "the social media  ", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  // padding around hint
                  hintText: 'Enter your Email',
                  labelText: 'Email',
                  suffixIcon: Icon(Icons.mail_outline_rounded),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
              ),
              SizedBox(height: 20),
              // add line
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  hintText: ' Enter your Password',
                  labelText: 'Password',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  contentPadding: EdgeInsets.all(20),
                  // padding around hint
                  hintStyle: TextStyle(color: Colors.black38),
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Checkbox(
                    checkColor: Colors.greenAccent,
                    activeColor: Colors.red,
                    value: this.valuefirst,
                    onChanged: (bool? value) {
                      setState(() {
                        this.valuefirst = value!;
                      });
                    },
                  ),


                  Text(
                    'Remember me  ',
                    style: TextStyle(fontSize: 17.0),
                  ),

                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const forget()),
                    );
                  },child: Text('Forgot Password',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),)),

                ],),

              SizedBox(
                height: 30,
              ),


              MaterialButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SuccessScreen()),
                  );
                 // signIn;
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
                height: 40,
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [


              Text(
                ' dont have any accout ? '
                    ,
                style: TextStyle(fontSize: 17.0, color: Colors.grey),
              ),

              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const complete()),
                );


                },


                child: Text('Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),),

              ),
],
             ),

        ]  ),
        ),

    ));



  }

 // Future signIn() async{
 //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //      email: emailController.text.trim(),
   //     password: passwordController.text.trim(),
   // );
}




