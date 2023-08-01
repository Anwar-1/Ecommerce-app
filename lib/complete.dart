import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SuccessScreen.dart';
//import 'package:task1/SuccessScreen.dart';

class complete extends StatefulWidget {
  const complete({super.key});

  @override
  State<complete> createState() => _completeState();
}

class _completeState extends State<complete> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
           Container(
            padding: EdgeInsets.fromLTRB(10, 55, 10, 5),

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

               // alignment: AlignmentDirectional.centerStart,
              //  child: Icon(Icons.arrow_back_outlined,   ),
                // onPressed: () {
                //  Navigator.of(context).pop();
                // },

            //  ),

              Text("complete profile ",style: TextStyle(fontSize: 25 ,color: Colors.black
                  , fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text("complete your details or continue \n with "
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
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(20),
                // padding around hint
                hintText: '  enter  your first name',
                labelText: ' first name ',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                hintStyle: TextStyle(color: Colors.black38),
              ),
            ),
              SizedBox(
                height: 30,
              ),

              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  // padding around hint
                  hintText: ' enter your  last name',
                  labelText: ' last name ',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  // padding around hint
                  hintText: '  enter your phone number ',
                  labelText: ' phone number  ',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Icon(Icons.smartphone_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20),
                  // padding around hint
                  hintText: 'address ',
                  labelText: 'enter  your phone address  ',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon:  Icon(Icons.location_on_outlined),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
              ),
              SizedBox(
                height: 30,
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
                height: 40,
              ),

              Text("by conitinuing your confirm that you agree  \n with "
                  "our team and condition  ", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
               ),


            ],),
          ),

        ),

    );

  }
}
