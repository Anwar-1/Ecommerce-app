import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task1agin/salary.dart';

import 'package:task1agin/salary.dart';

import 'homee.dart';
//enum menS {home,favaorite,massege,profile}

class profile extends StatefulWidget {
  const  profile({super.key});
 //final menS selctedM;

  @override
  State<profile> createState() => _profileState();
}



class _profileState extends State<profile> {

  @override
  Widget build(BuildContext context) {
    //final Color inactive = Colors.red;
    return SafeArea(
      child: Scaffold(
       appBar: AppBar(

         backgroundColor: Colors.grey,
         title: Text("Profile",
             textAlign: TextAlign.center
         ),

       ),

        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 115,
              width: 155 ,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/1527 (1).png"
                     ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -10,
                    child: SizedBox(
                      height: 46,
                      width: 60 ,
                      child:  MaterialButton(
                        onPressed:() {},
                        shape: CircleBorder(),
                        color: Colors.white,
                        textColor: Colors.white,
                        child:SvgPicture.asset('assets/icons/Camera Icon.svg'),

                        // Icon(FontAwesomeIcons.facebook,
                        //  color: Colors.blue,
                        //  size: 50,
                        // ),
                        // height: 40,
                        // minWidth: ,

                      ),

                      //FilledButton(

                     //   color : Colors.grey,
                      //  onPressed: () {},
                      //  child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
                     // ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 1,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                height: 60,
                minWidth: 400,
                color: Colors.grey[400],
               shape:  RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(20)),
               ),
                  onPressed:(){},
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/User Icon.svg'
                    ,width: 20,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(width: 20,),
                    Expanded(child: Text("My Account ",
                      style: TextStyle(fontSize: 17.0, color: Colors.black),
                    )),
                    Icon(Icons.arrow_forward_ios),

                  ],
                ),

              ),
            ),

            Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                height: 60,
                minWidth: 400,
                color: Colors.grey[400],
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                onPressed:(){},
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/Bell.svg'
                      ,width: 20,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(width: 20,),
                    Expanded(child: Text("Notifications ",
                      style: TextStyle(fontSize: 17.0, color: Colors.black),
                    )),
                    Icon(Icons.arrow_forward_ios),

                  ],
                ),

              ),
            ),



            Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                height: 60,
                minWidth: 400,
                color: Colors.grey[400],
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                onPressed:(){},
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/Settings.svg'
                      ,width: 20,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(width: 20,),
                    Expanded(child: Text("Setting",
                      style: TextStyle(fontSize: 17.0, color: Colors.black),
                    )),
                    Icon(Icons.arrow_forward_ios),

                  ],
                ),

              ),
            ),





            Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                height: 60,
                minWidth: 400,
                color: Colors.grey[400],
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                onPressed:(){},
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/User Icon.svg'
                      ,width: 20,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(width: 20,),
                    Expanded(child: Text("Help Center ",
                      style: TextStyle(fontSize: 17.0, color: Colors.black),
                    )),
                    Icon(Icons.arrow_forward_ios),

                  ],
                ),

              ),
            ),

            Padding(
              padding: EdgeInsets.all(16.0),
              child: MaterialButton(
                height: 60,
                minWidth: 400,
                color: Colors.grey[400],
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                onPressed:(){},
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/Log out.svg'
                      ,width: 20,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(width: 20,),
                    Expanded(child: Text("log Out ",
                      style: TextStyle(fontSize: 17.0, color: Colors.black),
                    )),
                    Icon(Icons.arrow_forward_ios),

                  ],
                ),

              ),
            ),




          ],




        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 20),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomeScreen()),
                );
              } ,icon:SvgPicture.asset("assets/icons/Shop Icon.svg",
             //   color:menS.home== selctedM ? kPrimarycolor : inactive
                ),),
              IconButton(onPressed: (){} ,icon:SvgPicture.asset("assets/icons/Heart Icon.svg"),),
              IconButton(onPressed: (){} ,icon:SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),),
              IconButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const profile()),
                );
              } ,icon:SvgPicture.asset("assets/icons/User Icon.svg",color: Colors.pinkAccent,),),
            ],
          ),
        ),
      ),
    );
  }
}
