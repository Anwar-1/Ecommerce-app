import 'package:flutter/material.dart';
//import 'package:task1/Register.dart';
//import 'package:task1/complete.dart';

import 'Register.dart';
import 'complete.dart';

class forget extends StatefulWidget {
  const forget({super.key});

  @override
  State<forget> createState() => _forgetState();
}

class _forgetState extends State<forget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(10, 55, 10, 5),

          child: Column(

            children: [
              SizedBox(
                height: 10,
              ),

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

             // ),
              SizedBox(
                height: 20,
              ),
              Text("forget password ",style: TextStyle(fontSize: 25 ,color: Colors.black
                  , fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text("please enter your email and we will send     \n "
                  "you a link to return to your account  "
                  "the social media  ", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 50,
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
              SizedBox(height: 90),

              MaterialButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
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


              SizedBox(height: 50),


              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      ' dont have any accout ? '
                      ,
                      style: TextStyle(fontSize: 15 ,color: Colors.grey),
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
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
